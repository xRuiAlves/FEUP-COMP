/**
 * SemanticError
 */
public class SemanticError extends Error {
    public SemanticError(int line, String error_desc) {
        super(String.format("Error in line %d -> %s", line, error_desc));
    }
}