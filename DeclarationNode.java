// Node that represents some kind of declaration
public interface DeclarationNode {
    public Variable toVariable();

    // So that the node gets and stores the relevant information for later on printing (type, return type, arguments, etc)
    public void prepareInternalInfo();
}
          