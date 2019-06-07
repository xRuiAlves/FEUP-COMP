import java.util.List;
import java.util.Arrays;
import java.util.Collections;
import java.util.function.Predicate;
import java.util.Objects;
import java.util.stream.Collectors;

public abstract class MethodDeclarationNode extends NodeWithSymbolTable implements DeclarationNode {
  // protected String name; // Declared in superclass for access
  protected VariableType ret;
  protected VariableIdentifier identifier;
  protected Variable[] params;

  public MethodDeclarationNode(int id) {
    super(id);
  }

  public MethodDeclarationNode(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  public String getNodeName() {
    return "declaration: " + this.name + "()";
  }

  @Override
  public Variable toVariable() {
    return new Method(identifier, ret, params);
  }

  @Override
  protected String getScopeIdentifier() {
    VariableType[] params_types = Arrays.stream(params)
                                    .map(Variable::getType)
                                    .toArray(VariableType[]::new);

    return SymbolTableScopes.calculateMethodIdentifier(identifier, params_types);
  }

  protected final void generateParametersAndLocalsCode(StringBuilder sb) {
    // Temporary placeholder
    // sb.append("\t.limit stack 10 ; temporary while stack size is not being calculated\n");

    sb.append("\t.limit stack ").append(MethodStackSizeScopes.getInstance().getMethodScope(this.getScopeIdentifier()).getMaxStackSize()).append("\n");

    // Number of local variables = number of entries in the symbol table + 1
    sb.append(String.format("\t.limit locals %d\n", this.calcLocalsLimit() + 1));

    // Creating the local variables (done here instead of in the child nodes because of the sequential indexes)

    // The starting index is the number of parameters (+1 because of 'this')
    int locals_start_idx = ((int) this.symbol_table.values().stream().filter(Variable::isParameter).count()) + 1;
    List<Variable> local_variables = this.symbol_table.values().stream()
      .filter(Predicate.not(Variable::isParameter)) // Not parameters
      .filter(v -> Objects.isNull(v.getConstantValue())) // Nor variables that were made constant via constant propagation optimization
      .collect(Collectors.toList());

    for (Variable local_var : local_variables) {
      local_var.setLocalVarIndex(locals_start_idx);
      sb.append(String.format(local_var.toJasminDeclaration(), locals_start_idx++));
    }
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
