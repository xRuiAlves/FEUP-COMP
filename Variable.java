/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements Typed {
    protected final VariableType type;
    protected final VariableIdentifier identifier;
    protected boolean is_initialized = false;
    protected boolean is_parameter = false;
    protected int local_var_index = 4321; // If we are to fail due to mistakes in initializations, make it fail hard! (in order to more easlily find the bugs)
    
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

    public String toJasminLoad() {
        // Using shorter instructions optimization
        if (this.local_var_index < 4) {
            return String.format("\t%s_%d\n", this.type.toJasminLoad(), this.local_var_index);
        } else {
            return String.format("\tldc %d\n%s\n", this.local_var_index, this.type.toJasminLoad());
        }
    }

    public String toJasminStore() {
        // Using shorter instructions optimization
        if (this.local_var_index < 4) {
            return String.format("\t%s_%d\n", this.type.toJasminStore(), this.local_var_index);
        } else {
            return String.format("\tldc %d\n%s\n", this.local_var_index, this.type.toJasminStore());
        }
    }

    public void setLocalVarIndex(int local_var_index) {
        this.local_var_index = local_var_index;
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