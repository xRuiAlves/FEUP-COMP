public abstract class MethodDeclarationNode extends NodeWithSymbolTable implements DeclarationNode {
  // protected String name; // Declared in superclass for access

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
    return String.format("%s::%s - return: TODO ; args: TODO", this.getIdentifier(), this.getType());
  }

  public abstract ASTType[] getArguments();

  public abstract ASTType getReturn();
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
