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

    public static final String calculateMethodIdentifier(VariableIdentifier identifier, VariableType[] params) {
        StringBuilder sb = new StringBuilder();
    
        sb.append(identifier);
        sb.append("(");

        String prefix = "";
        for (VariableType param : params) {
            sb.append(prefix);
            prefix = ",";
            sb.append(param);
        }

        sb.append(")");

        return sb.toString();
    }

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

    /**
     * 
     * @return The declared variable or null if it does not exist
     */
    public Variable isDeclared(String local_scope, String identifier) {
        Variable v = this.method_scopes.get(local_scope).get(identifier);
        if (v != null) {
            return v;
        }

        return this.global_symbol_table.get(identifier);
    }

    public Method isMethodDeclared(String method_identifier) {
        Variable v = this.global_symbol_table.get(method_identifier);
        if (v != null) {
            return (Method) v;
        }
        return null;
    }
}