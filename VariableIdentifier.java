/**
 * Represents a variable identifier - should be used in favour of Strings in order to standardize the code
 */
public class VariableIdentifier {
    private final String identifier;

    public VariableIdentifier(String identifier) {
        this.identifier = identifier;
    }

    @Override
    public String toString() {
        return identifier;
    }
}