public class MethodStackSize {
    private int current_stack_size = 0;
    private int max_stack_size = 0;

    public MethodStackSize() {
    }

    public void impactStack(int diff) {
        current_stack_size += diff;
        max_stack_size = Math.max(max_stack_size, current_stack_size);
        // System.out.printf("diff %d\t%s\n", diff, this.toString());
    }

    public int getMaxStackSize() {
        return max_stack_size;
    }

    @Override
    public String toString() {
        return String.format("current: %d\tmax: %d", current_stack_size, max_stack_size);
    }
}