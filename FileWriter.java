import java.io.PrintWriter;

/**
 * FileWriter - necessary because jjtree does not seem to like java imports
 */
public class FileWriter {
    public static void writeStringToFile(String file_name, String data) throws Exception {
        try (PrintWriter out = new PrintWriter(file_name)) {
            out.println(data);
        }
    }
}