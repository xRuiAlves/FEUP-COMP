/**
 * Represents a variable - should be used in favour of AST Node classes in order to separate from JJT/JavaCC logic and standardize the code
 */
public class Variable implements DeclarationNode {
    private final VariableType type;
    private final VariableIdentifier identifier;
    
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
    public VariableType getVariableType() {
        return type;
    }

    /**
     * @return the variable identifier
     */
    public VariableIdentifier getVariableIdentifier() {
        return identifier;
    }

    // DeclarationNode overrides in order to be able to use this class for symbol tables

    @Override
    public String getIdentifier() {
        return identifier.toString();
    }

    @Override
    public String getType() {
        return type.toString();
    }

    @Override
    public String getInformation() {
        return this.toString();
    }

    @Override
    public void prepareInternalInfo() {
        // Do nothing, not relevant here
    }
}