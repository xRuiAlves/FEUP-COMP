/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable {
    private final VariableType type;
    private final VariableIdentifier identifier;
    
    public Variable(VariableType type, VariableIdentifier identifier) {
        this.type = type;
        this.identifier = identifier;
    }

    @Override
    public String toString() {
        return String.format("%s %s", this.type, this.identifier);
    }

    /**
     * @return the variable type
     */
    public VariableType getVariableType() {
        return type;
    }

    /**
     * @return the variable identifier
     */
    public VariableIdentifier getVariableIdentifier() {
        return identifier;
    }
}