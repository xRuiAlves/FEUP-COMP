/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements Typed {
    protected final VariableType type;
    protected final VariableIdentifier identifier;
    protected boolean is_class_field = false;
    protected int n_initializations = 0;
    protected boolean is_parameter = false;
    protected int local_var_index = 4321; // If we are to fail due to mistakes in initializations, make it fail hard! (in order to more easlily find the bugs)
    protected String constant_value = null;
    
    public Variable(VariableType type, VariableIdentifier identifier) {
        this.type = type;
        this.identifier = identifier;
    }

    @Override
    public String toString() {
        return String.format("%s::%s%s", this.identifier, this.type, (this.is_parameter ? " (parameter)" : ""));
    }

    public String toJasminDeclaration() {
        if (this.constant_value != null || this.isClassField()) {
            return "";
        }
        // Leaving the index to be filled in later
        return String.format("\t.var %%d is local_%s %s\n", this.identifier, this.type.toJasminType());
    }

    public String toJasminLoad() {
        if (this.constant_value != null) {
            return ASTIntegerLiteral.integerValueToLoad(this.constant_value);
        }

        if (this.isClassField()) {
            return String.format("\taload_0\n\tgetfield %s/f_%s %s\n", JMMParser.class_type, this.identifier, this.type.toJasminType());
        }
        // Using shorter instructions optimization
        return String.format("\t%s%s%d\n", this.type.toJasminLoad(), this.local_var_index < 4 ? "_" : " ", this.local_var_index);
    }

    public String toJasminStore() {
        if (this.constant_value != null) {
            System.err.println("This should not happen, store to constant variable");
            return "";
        }

        if (this.isClassField()) {
            // aload_0 is done in ASTAssignmentStatement due to needing to be lowest on the stack
            return String.format("\tputfield %s/f_%s %s\n", JMMParser.class_type, this.identifier, this.type.toJasminType());
        }
        // Using shorter instructions optimization
        return String.format("\t%s%s%d\n", this.type.toJasminStore(), this.local_var_index < 4 ? "_" : " ", this.local_var_index);
    }

    public void setLocalVarIndex(int local_var_index) {
        this.local_var_index = local_var_index;
    }

    public int getLocalVarIndex() {
        return this.local_var_index;
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
        this.n_initializations++;
    }
    
    public boolean isInitialized() {
        return this.n_initializations > 0;
    }

    public boolean wasNotReinitialized() {
        return this.n_initializations == 1;
    }

    public void setConstantValue(String value) {
        this.constant_value = value;
    }

    public String getConstantValue() {
        return this.constant_value;
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