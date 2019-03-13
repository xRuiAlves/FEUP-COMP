/* Generated By:JJTree: Do not edit this line. ASTMethodDeclaration.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public
class ASTMethodDeclaration extends SimpleNode {
  protected ASTType returnType;

  public ASTMethodDeclaration(int id) {
    super(id);
  }

  public ASTMethodDeclaration(JMMParser p, int id) {
    super(p, id);
  }

  public String getInformation(String prefix) {
    StringBuilder sb = new StringBuilder();

    sb.append(prefix).append("{\n");
    sb.append(prefix).append("  returnType: ").append(returnType.getInformation(""));
    sb.append(prefix).append("}\n");

    return sb.toString();
  }

  @Override
  public void dump(String prefix) {
    super.printNodeName(prefix);

    System.out.print(this.getInformation(prefix));

    super.exploreChildren(prefix);
  }
}
/* JavaCC - OriginalChecksum=3d0bb6bccafce97c55dc7c526183eb43 (do not edit this line) */
