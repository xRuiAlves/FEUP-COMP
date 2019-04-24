/* Generated By:JJTree: Do not edit this line. ASTAndExpression.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public
class ASTAndExpression extends SimpleNode implements Typed {
  private VariableType type;

  public ASTAndExpression(int id) {
    super(id);
  }

  public ASTAndExpression(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  public String getNodeName() {
    return "&&";
  }

  @Override
  public VariableType getType() {
    return type;
  }

  @Override
  protected void applySemanticAnalysis() throws SemanticError {
    VariableType lhs = ((Typed) children[0]).getType();
    VariableType rhs = ((Typed) children[1]).getType();
    if (!((lhs.isBoolean() || lhs.isIgnored()) && (rhs.isBoolean() || rhs.isIgnored()))) {
      throw new SemanticError(this.line, String.format("Invalid operand types %s and %s for operator &&", lhs, rhs));
    }

    // Calculate own type
    this.type = new VariableType("boolean");
  }
}
/* JavaCC - OriginalChecksum=fae167255531a69eed62ec05b1af74e6 (do not edit this line) */
