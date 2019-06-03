import java.util.HashMap;

public class MethodStackSizeScopes {
    private static MethodStackSizeScopes instance = new MethodStackSizeScopes();
    
    private MethodStackSizeScopes() {
    }

    public static MethodStackSizeScopes getInstance() {
        return instance;
    }

    private final HashMap<String, MethodStackSize> method_scopes = new HashMap<>();

    public MethodStackSize getMethodScope(String method_identifier) {
        return this.method_scopes.get(method_identifier);
    }

    public void addMethodScope(String method_identifier, int line) throws SemanticError {
        if (this.method_scopes.containsKey(method_identifier)) {
            throw new SemanticError(line, String.format("Method with identifier %s already declared", method_identifier));
        }

        this.method_scopes.put(method_identifier, new MethodStackSize());
    }
}