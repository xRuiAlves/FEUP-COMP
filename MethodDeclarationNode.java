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

  @Override
  public void setScopeIdentifier(String scope_identifier) {
    // ignored
  }

  @Override
  protected String getScopeIdentifier() {
    StringBuilder sb = new StringBuilder();
    
    sb.append(this.identifier);

    for (Variable param : params) {
      sb.append(param.getType());
    }

    return sb.toString();
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
