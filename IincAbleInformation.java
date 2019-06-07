public class IincAbleInformation {
    public final boolean is_iincable;
    public Variable variable;
    public int value; 

    public IincAbleInformation() {
        this.is_iincable = false;
    }

    public IincAbleInformation(Variable v, int value) {
        this.is_iincable = true;
        this.variable = v;
        this.value = value;
    }
}