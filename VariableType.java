/**
 * Represents a variable type - should be used in favour of ASTType in order to separate from JJT/JavaCC logic and standardize the code
 */
public class VariableType {
    private final String type;

    public static final String ignored_type = "!ignored";

    public VariableType(String type) {
        this.type = type;
    }
    
    public VariableType(ASTType type) {
        this.type = type.getNodeName();
    }

    public boolean isInt() {
        return type.equals("int");
    }

    public boolean isBoolean() {
        return type.equals("boolean");
    }

    public boolean isIntArray() {
        return type.equals("int[]");
    }

    public boolean isIgnored() {
        return type.equals(ignored_type);
    }

    public boolean isIdentifier() {
        return !(isInt() || isBoolean() || isIntArray());
    }
    
    @Override
    public String toString() {
        return this.type;
    }

    @Override
    public boolean equals(Object type) {
        return (type instanceof VariableType) &&
            (
                (this.type.equals(ignored_type) || ((VariableType) type).type.equals(ignored_type)) ||
                this.type.equals(((VariableType) type).type)
            );
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return new VariableType(this.type);
    }

    public String toJasminType() {
        if (this.isInt()) {
            return "I";
        } else if (this.isBoolean()) {
            return "Z";
        } else if (this.isIntArray()) {
            return "[I";
        } else if (this.isIdentifier()) {
            return String.format("L%s;", this.type);
        } else {
            return "ERROR";
        }
    }
}