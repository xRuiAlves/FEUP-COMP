public abstract class MethodDeclarationNode extends NodeWithSymbolTable implements DeclarationNode {
  // protected String name; // Declared in superclass for access
  protected VariableType ret;
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
  public String getIdentifier() {
    return this.name;
  }

  @Override
  public String getType() {
    return "function";
  }

  @Override
  public String getInformation() {
    StringBuilder sb = new StringBuilder();
    sb.append(this.getIdentifier()).append("::").append(this.getType());
    sb.append(" - ").append(" return: ").append(this.getReturn());
    sb.append(" ; params: [");
    Variable[] params = this.getParameters();
    if (params != null && params.length > 0) {
        sb.append(params[0]);
        for (int i = 1; i < params.length; ++i) {
            sb.append(", ").append(params[i]);
        }
    }
    sb.append("]");

    return sb.toString();
  }

  public Variable[] getParameters() {
    return this.params;
  }

  public VariableType getReturn() {
    return this.ret;
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
