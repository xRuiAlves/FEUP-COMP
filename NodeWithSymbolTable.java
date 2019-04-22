import java.util.HashMap;
import java.util.Map;

public abstract class NodeWithSymbolTable extends SimpleNode {
    protected String name;
  
    // Cannot map name to node because the node does not yet have a name when the node scope is opened
    // Possible solution for later: add the nodes to a Set symbol table like here and then, when preparing for semantic verification, build the Map instead (the nodes will have a name by then)
    protected HashMap<String, DeclarationNode> symbol_table = new HashMap<>();
  
    public NodeWithSymbolTable(int id) {
      super(id);
    }
  
    public NodeWithSymbolTable(JMMParser p, int id) {
      super(p, id);
    }
  
    @Override
    protected void displaySymbolTable(String prefix) {
        System.out.printf("%sScope of %s:\n%s  Elements (%d):\n", prefix, this.name, prefix, this.symbol_table.size());
        for (Map.Entry<String, DeclarationNode> item : this.symbol_table.entrySet()) {
          System.out.println(prefix + "    " + item.getValue().getInformation());
        }
    }
  
    @Override
    protected boolean hasSymbolTable() {
      return true;
    }

    @Override
    public void createSymbolTables() {
      this.buildSymbolTable();
      super.createSymbolTables();
    }

    protected abstract void buildSymbolTable();

    protected void registerInSymbolTable(Node n) {
      if (n instanceof DeclarationNode) {
        DeclarationNode casted = (DeclarationNode) n;
        casted.prepareInternalInfo();
        this.symbol_table.put(casted.getIdentifier(), casted);
      }
    }
  }