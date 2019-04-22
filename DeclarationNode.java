// Node that represents some kind of declaration
// Also used for arguments (Variables) which are not necessarily a node but they represent one so it's fine
public interface DeclarationNode {
    public String getIdentifier();

    public String getType();

    public String getInformation();

    // So that the node gets and stores the relevant information for later on printing (type, return type, arguments, etc)
    public void prepareInternalInfo();
}
          