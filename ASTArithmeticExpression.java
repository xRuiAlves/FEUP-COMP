/* Generated By:JJTree: Do not edit this line. ASTArithmeticExpression.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public
class ASTArithmeticExpression extends SimpleNode implements Typed, Supressable {
  protected String operation;
  private VariableType type;

  public ASTArithmeticExpression(int id) {
    super(id);
  }

  public ASTArithmeticExpression(JMMParser p, int id) {
    super(p, id);
  }

  @Override
  public String getNodeName() {
    return this.operation;
  }

  @Override
  public boolean isSupressed() {
    return (jjtGetParent() instanceof Supressable) && ((Supressable) jjtGetParent()).isSupressed();
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
      throw new SemanticError(this.line, String.format("Invalid operand types %s and %s for operator %s", lhs, rhs, this.operation));
    }

    // Calculate own type
    this.type = new VariableType("int");
  }

  @Override
  protected void calculateStackImpact() {
    // Stack impact of -1 (removes two and inserts one)
    MethodStackSizeScopes.getInstance().getMethodScope(this.scope_identifier).impactStack(-1);
  }

  @Override
  protected void generateCodeNodeClose(StringBuilder sb) {
    if (this.isSupressed()) {
      // If the arithmetic operation was supressed then no code needs to be generated
      return;
    }

    // execute operation
    if (operation.equals("+")) {
      sb.append("\tiadd\n");
    } else if (operation.equals("-")) {
      sb.append("\tisub\n");
    } else if (operation.equals("*")) {
      sb.append("\timul\n");
    } else if (operation.equals("/")) {
      sb.append("\tidiv\n");
    }
  }

  public IincAbleInformation isIincAble(Variable v) {
    if (!operation.equals("+") && !operation.equals("-")) {
      // Not possible
      return new IincAbleInformation();
    }

    // Note for below: If the variable identifier is on the right hand side, the operation must be "+" -> cannot i = 1 - i

    if (children[0] instanceof ASTIdentifier && children[1] instanceof ASTIntegerLiteral) {
      return isIincAbleChildrenCheck(((ASTIdentifier) children[0]), ((ASTIntegerLiteral) children[1]), v, operation.equals("-"));
    } else if (operation.equals("+") && children[1] instanceof ASTIdentifier && children[0] instanceof ASTIntegerLiteral) {
      return isIincAbleChildrenCheck(((ASTIdentifier) children[1]), ((ASTIntegerLiteral) children[0]), v, operation.equals("-"));
    } else if (children[0] instanceof ASTIdentifier && children[1] instanceof ASTIdentifier) {
      return isIincAbleChildrenCheck(((ASTIdentifier) children[0]), ((ASTIdentifier) children[1]), v, operation.equals("-"));
    } else {
      // Not possible
      return new IincAbleInformation();
    }
  }

  private IincAbleInformation isIincAbleChildrenCheck(ASTIdentifier identifier, ASTIntegerLiteral value, Variable v, boolean should_invert_sign) {
    if (identifier.getVariable() == v) {
      return new IincAbleInformation(v, Integer.parseInt(value.getValue()) * (should_invert_sign ? -1 : 1));
    } else {
      // Not possible
      return new IincAbleInformation();
    }
  }

  // In the case that constant propagation might have happened, iinc can also be used
  private IincAbleInformation isIincAbleChildrenCheck(ASTIdentifier lhs, ASTIdentifier rhs, Variable v, boolean should_invert_sign) {
    if (lhs.getVariable() == v && (rhs.getVariable().getConstantValue() != null)) {
      return getIincAbleInformationFromIdentifiers(lhs, rhs, should_invert_sign);
    } else if (!should_invert_sign && rhs.getVariable() == v && (lhs.getVariable().getConstantValue() != null)) {
      return getIincAbleInformationFromIdentifiers(rhs, lhs, should_invert_sign);
    } else {
      // Not possible
      return new IincAbleInformation();
    }
  }

  private IincAbleInformation getIincAbleInformationFromIdentifiers(ASTIdentifier variable, ASTIdentifier value, boolean should_invert_sign) {
    JMMParser.n_replaced_by_constants++;
    return new IincAbleInformation(variable.getVariable(), Integer.parseInt(value.getVariable().getConstantValue()) * (should_invert_sign ? -1 : 1));
  }
}
/* JavaCC - OriginalChecksum=8f9b4fed618a844c012461a6669090fa (do not edit this line) */
