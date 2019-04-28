/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements Typed {
    protected final VariableType type;
    protected final VariableIdentifier identifier;
    protected boolean is_initialized = false;
    protected boolean is_parameter = false;
    
    public Variable(VariableType type, VariableIdentifier identifier) {
        this.type = type;
        this.identifier = identifier;
    }

    @Override
    public String toString() {
        return String.format("%s::%s%s", this.identifier, this.type, (this.is_parameter ? " (parameter)" : ""));
    }

    public String toJasminDeclaration() {
        // Leaving the index to be filled in later
        return String.format("\t.var %%d is %s %s\n", this.identifier, this.type.toJasminType());
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

    public void markAsParameter() {
        this.is_parameter = true;
    }
    
    public boolean isParameter() {
        return this.is_parameter;
    }
}