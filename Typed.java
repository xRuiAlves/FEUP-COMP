/**
 * Typed represents something that has a type, like a node with a type that might be inferred from its children (operands).
 */
public interface Typed {
    /**
     * Gets the type of the element based on its internal data
     * @return the type of the element
     */
    public VariableType getType();
}