/* Generated By:JJTree: Do not edit this line. ASTLessThanExpression.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public
class ASTLessThanExpression extends SimpleNode implements Typed {
  private VariableType type;

  public ASTLessThanExpression(int id) {
    super(id);
  }

  public ASTLessThanExpression(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  public String getNodeName() {
    return "<";
  }

  @Override
  public VariableType getType() {
    return type;
  }

  @Override
  protected void applySemanticAnalysis() throws SemanticError {
    VariableType lhs = ((Typed) children[0]).getType();
    VariableType rhs = ((Typed) children[1]).getType();
    if (!((lhs.isInt() || lhs.isIgnored()) && (rhs.isInt() || rhs.isIgnored()))) {
      throw new SemanticError(this.line, String.format("Invalid operand types %s and %s for operator <", lhs, rhs));
    }

    // Calculate own type
    this.type = new VariableType("boolean");
  }

  @Override
  protected void calculateStackImpact() {
    MethodStackSizeScopes.getInstance().getMethodScope(this.scope_identifier).impactStack(-1);
  }

  @Override
  protected void generateCodeNodeClose(StringBuilder sb) {
    final int label_number = LabelGenerator.nextCustomLabelNr();
    final String lt_false_label = "lt_false_" + label_number;
    final String end_lt_label = "lt_done_" + label_number;

    sb.append("\tif_icmpge ").append(lt_false_label).append("\n");
    sb.append("\ticonst_1\n");
    sb.append("\tgoto ").append(end_lt_label).append("\n");
    sb.append(lt_false_label).append(":\n");
    sb.append("\ticonst_0\n");
    sb.append(end_lt_label).append(":\n");
  }
}
/* JavaCC - OriginalChecksum=9405f26bbe0b95a12e7d396311b1838b (do not edit this line) */
