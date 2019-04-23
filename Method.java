/**
 * Represents a Method
 */
public class Method extends Variable {
    private final Variable[] params;
    private final VariableType ret;

    public Method(VariableIdentifier identifier, VariableType ret, Variable[] params) {
        super(new VariableType("function"), identifier);
        this.ret = ret;
        this.params = params;
    }

    @Override
    public String toString() {
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