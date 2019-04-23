import java.util.HashMap;

/**
 * SymbolTableScopes
 */
public final class SymbolTableScopes {
    private static SymbolTableScopes instance = new SymbolTableScopes();
    
    private SymbolTableScopes() {
    }

    public static SymbolTableScopes getInstance() {
        return instance;
    }
 
    private HashMap<String, Variable> global_symbol_table;

    private final HashMap<String, HashMap<String, Variable>> method_scopes = new HashMap<>();

    public HashMap<String, Variable> getGlobalScope() {
        return global_symbol_table;
    }

    public HashMap<String, Variable> getMethodScope(String method_identifier) {
        return this.method_scopes.get(method_identifier);
    }

    public void setGlobalScope(HashMap<String, Variable> global_symbol_table) {
        this.global_symbol_table = global_symbol_table;
    }

    public void addMethodScope(String method_identifier, int line, HashMap<String, Variable> symbol_table) throws SemanticError {
        if (this.method_scopes.containsKey(method_identifier)) {
            throw new SemanticError(line, String.format("Method with identifier %s already declared", method_identifier));
        }

        this.method_scopes.put(method_identifier, symbol_table);
    }
}