// Node that represents some kind of declaration
public interface DeclarationNode {
    public abstract String getIdentifier();

    public abstract String getType();

    // TODO maybe? not sure if relevant at this step
    // public abstract String getValue();
}
          