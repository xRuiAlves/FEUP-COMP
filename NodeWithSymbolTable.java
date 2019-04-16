import java.util.HashSet;
import java.util.Map;

public class NodeWithSymbolTable extends SimpleNode {
    protected String name;
  
    // Cannot map name to node because the node does not yet have a name when the node scope is opened
    // Possible solution for later: add the nodes to a Set symbol table like here and then, when preparing for semantic verification, build the Map instead (the nodes will have a name by then)
    protected HashSet<DeclarationNode> symbol_table = new HashSet<>();
  
    public NodeWithSymbolTable(int id) {
      super(id);
    }
  
    public NodeWithSymbolTable(JMMParser p, int id) {
      super(p, id);
    }
  
    @Override
    protected void displaySymbolTable(String prefix) {
        System.out.printf("%sScope of %s:\n%sElements (%d):\n", prefix, this.name, prefix, this.symbol_table.size());
        for (DeclarationNode item : this.symbol_table) {
          System.out.println(prefix + "  " + item.getIdentifier() + "::" + item.getType());
        }
    }
  
    @Override
    protected boolean hasSymbolTable() {
      return true;
    }

    protected void registerInSymbolTable(SimpleNode n) {
      if (n instanceof DeclarationNode) {
        DeclarationNode casted = (DeclarationNode) n;
        this.symbol_table.add(casted);
      }
    }
  }