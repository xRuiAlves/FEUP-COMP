/* Generated By:JJTree: Do not edit this line. ASTClassDeclaration.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public class ASTClassDeclaration extends NodeWithSymbolTable {
  // protected String name; // Declared in superclass for access

  public ASTClassDeclaration(int id) {
    super(id);
  }

  public ASTClassDeclaration(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  public String getNodeName() {
    return "class " + this.name;
  }
}
/*
 * JavaCC - OriginalChecksum=36754aee3a22d19327a28ac9d9418a2d (do not edit this
 * line)
 */
