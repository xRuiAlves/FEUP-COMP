/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements Typed {
    protected final VariableType type;
    protected final VariableIdentifier identifier;
    protected boolean is_class_field = false;
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
        if (this.isClassField()) {
            return "";
        }
        // Leaving the index to be filled in later
        return String.format("\t.var %%d is local_%s %s\n", this.identifier, this.type.toJasminType());
    }

    // TODO: Test that aload_0 is valid

    public String toJasminLoad() {
        if (this.isClassField()) {
            return String.format("\taload_0\n\tgetfield %s/%s %s\n", JMMParser.class_type, this.identifier, this.type.toJasminType());
        }
        // Using shorter instructions optimization
        return String.format("\t%s%s%d\n", this.type.toJasminLoad(), this.local_var_index < 4 ? "_" : " ", this.local_var_index);
    }

    public String toJasminStore() {
        if (this.isClassField()) {
            // aload_0 is done in ASTAssignmentStatement due to needing to be lowest on the stack
            return String.format("\tputfield %s/%s %s\n", JMMParser.class_type, this.identifier, this.type.toJasminType());
        }
        // Using shorter instructions optimization
        return String.format("\t%s%s%d\n", this.type.toJasminStore(), this.local_var_index < 4 ? "_" : " ", this.local_var_index);
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

    public void markAsField() {
        this.is_class_field = true;
    }

    public boolean isClassField() {
        return this.is_class_field;
    }
}