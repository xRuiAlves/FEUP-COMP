import java.util.HashMap;
import java.util.Map;

public abstract class NodeWithSymbolTable extends SimpleNode {
    protected String name;
  
    // Cannot map name to node because the node does not yet have a name when the node scope is opened
    // Possible solution for later: add the nodes to a Set symbol table like here and then, when preparing for semantic verification, build the Map instead (the nodes will have a name by then)
    protected HashMap<String, Variable> symbol_table = new HashMap<>();
  
    public NodeWithSymbolTable(int id) {
      super(id);
    }
  
    public NodeWithSymbolTable(JMMParser p, int id) {
      super(p, id);
    }
  
    @Override
    protected void displaySymbolTable(String prefix) {
        System.out.printf("%sScope of %s:\n%s  Elements (%d):\n", prefix, this.name, prefix, this.symbol_table.size());
        for (Map.Entry<String, Variable> item : this.symbol_table.entrySet()) {
          System.out.println(prefix + "    " + item.getValue());
        }
    }
  
    @Override
    protected boolean hasSymbolTable() {
      return true;
    }

    @Override
    public void createSymbolTables(String current_scope_identifier) {
      this.buildSymbolTable();
      super.createSymbolTables(current_scope_identifier);
    }

    protected abstract void buildSymbolTable();

    protected abstract String getScopeIdentifier();

    protected void registerInSymbolTable(Variable v) {
      this.symbol_table.put(v.getIdentifier().toString(), v);
    }

    protected void registerInSymbolTable(Node n) {
      if (n instanceof DeclarationNode) {
        DeclarationNode casted = (DeclarationNode) n;
        casted.prepareInternalInfo();
        Variable node_variable = casted.toVariable();
        if (casted instanceof MethodDeclarationNode) {
          MethodDeclarationNode method = (MethodDeclarationNode) casted;
          this.symbol_table.put(method.getScopeIdentifier(), node_variable);
        } else {
          this.symbol_table.put(node_variable.getIdentifier().toString(), node_variable);
        }
      }
    }
    
  }