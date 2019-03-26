public class ErrorLimitReached extends Error {
    public ErrorLimitReached() {
        super("Limit of 10 syntatic errors has been reached! Aborting execution.");
    }
}