import java.util.ArrayList;

/* Generated By:JJTree: Do not edit this line. ASTMethodDeclaration.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public class ASTMethodDeclaration extends MethodDeclarationNode {
  public ASTMethodDeclaration(int id) {
    super(id);
  }

  public ASTMethodDeclaration(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  protected void buildSymbolTable() {
    // Register method parameters because they are local reference
    for (Variable param : params) {
      this.registerInSymbolTable(param);
      param.markAsInitialized();  // method parameters are assumed to be initialized (passed through the method call)
    }

    // 0 - return type (ASTType)
    // 1 - ASTParameters node with ASTParameter children
    // 2 or more - var declarations, iterate and check if they are var decl -> registerInSymbolTable
    for (int i = 2; i < children.length; ++i) {
      if (children[i] instanceof DeclarationNode) {
        this.registerInSymbolTable(children[i]);
      } else {
        // The declarations are all sequential in the start of the method code
        break;
      }
    }

    SymbolTableScopes.getInstance().addMethodScope(this.getScopeIdentifier(), this.line, this.symbol_table);
  }

  @Override
  public void prepareInternalInfo() {
    this.identifier = new VariableIdentifier(this.name);

    // All are non-optional (ensured by the grammar)

    // 0 - return type (ASTType)
    this.ret = new VariableType((ASTType) children[0]);
    // 1 - ASTMethodParameters node with ASTMethodParameter children
    ASTMethodParameters params = (ASTMethodParameters) children[1];
    int n_params = params.jjtGetNumChildren();
    ArrayList<Variable> params_vars = new ArrayList<>();
    for (int i = 0; i < n_params; ++i) {
      ASTMethodParameter param = (ASTMethodParameter) params.jjtGetChild(i);
      VariableIdentifier identifier = new VariableIdentifier(param.getNodeName());
      ASTType param_type = (ASTType) param.jjtGetChild(0);
      VariableType type = new VariableType(param_type);

      params_vars.add(new Variable(type, identifier));
    }
    this.params = params_vars.toArray(new Variable[0]);
    // 2 or more - var declarations, only used for creating symbol table
  }

  @Override
  protected void generateCodeNodeOpen(StringBuilder sb) {
    sb.append(".method public ")
      .append(this.identifier)
      .append("(");

    for (Variable param : this.params) {
      sb.append(param.getType().toJasminType());
    }

    sb.append(")");
    sb.append(this.ret.toJasminType()).append("\n");

    // Temporary placeholder
    sb.append("\t.limit stack 10 ; temporary while stack size is not being calculated\n");
  }

  @Override
  protected void generateCodeNodeClose(StringBuilder sb) {
    sb.append("\treturn\n")
      .append(".end method\n\n");
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
