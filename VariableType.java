/**
 * Represents a variable type - should be used in favour of ASTType in order to separate from JJT/JavaCC logic and standardize the code
 */
public class VariableType {
    private final String type;

    public VariableType(String type) {
        this.type = type;
    }
    
    public VariableType(ASTType type) {
        this.type = type.getNodeName();
    }
    
    @Override
    public String toString() {
        return this.type;
    }
}