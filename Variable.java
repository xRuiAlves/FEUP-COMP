/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements Typed {
    protected final VariableType type;
    protected final VariableIdentifier identifier;
    protected boolean is_initialized;
    
    public Variable(VariableType type, VariableIdentifier identifier) {
        this.type = type;
        this.identifier = identifier;
    }

    @Override
    public String toString() {
        return String.format("%s::%s", this.identifier, this.type);
    }

    /**
     * @return the variable type
     */
    public VariableType getType() {
        return type;
    }

    /**
     * @return the variable identifier
     */
    public VariableIdentifier getIdentifier() {
        return identifier;
    }

    public void markAsInitialized() {
        this.is_initialized = true;
    }
    
    public boolean isInitialized() {
        return this.is_initialized;
    }
}