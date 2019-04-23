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

  public Variable toVariable() {
    return new Method(identifier, ret, params);
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
