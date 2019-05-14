public class LabelGenerator {
    private static int counter = 0;

    public static String nextLabel() {
        return "Label" + counter++;
    }

    public static int nextCustomLabelNr() {
        return counter++;
    }
}