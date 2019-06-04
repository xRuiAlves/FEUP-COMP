import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ParserOptions {
    private boolean will_apply_optimizations = false;
    private boolean will_apply_r = false;
    private int r_level = 0;
    String input_file = null;

    public ParserOptions() {
    }

    public void setWillApplyOptimizations(boolean will_apply_optimizations) {
        this.will_apply_optimizations = will_apply_optimizations;
    }

    public void setWillApplyR(boolean will_apply_r) {
        this.will_apply_r = will_apply_r;
    }

    public void setRLevel(int r_level) {
        this.r_level = r_level;
    }

    public void setInputFile(String input_file) {
        this.input_file = input_file;
    }

    public boolean willApplyOptimizations() {
        return this.will_apply_optimizations;
    }

    public boolean willApplyR() {
        return this.will_apply_r;
    }

    public int getRLevel() {
        return this.r_level;
    }

    public String getInputFile() {
        return this.input_file;
    }

    public static ParserOptions parseArgs(String[] args) {
        ParserOptions options = new ParserOptions();

        // -r=<num> in which '=<num>' is optional
        final Pattern minus_r_pattern = Pattern.compile("-r(?:=(\\d+))?");

        for (String arg : args) {
            if (arg.equals("-o")) {
                options.setWillApplyOptimizations(true);
                continue;
            }

            Matcher m = minus_r_pattern.matcher(arg);
            if (m.matches()) {
                options.setWillApplyR(true);
                if (m.groupCount() > 1) {
                    int r_level = Integer.parseInt(m.group(1));
                    options.setRLevel(r_level);
                } else {
                    options.setRLevel(0);
                }
                continue;
            }

            // Was not -r or -o, must be the input file
            options.setInputFile(arg);
        }

        return options;
    }
}