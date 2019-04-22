// Node that represents some kind of declaration
public interface DeclarationNode {
    public String getIdentifier();

    public String getType();

    public String getInformation();

    // So that the node gets and stores the relevant information for later on printing (type, return type, arguments, etc)
    public void prepareInternalInfo();
}
          