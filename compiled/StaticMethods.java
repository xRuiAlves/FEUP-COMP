/**
 * StaticMethods
 */
public class StaticMethods {
    public static int method1() {
        System.out.println("Called StaticMethods::method1");
        return 0;
    }

    public static void method2() {
        System.out.println("Called StaticMethods::method2");
    }

    public static boolean method3() {
        System.out.println("Called StaticMethods::method3");
        return true;
    }

    public static void method4(int arg) {
        System.out.println("Called StaticMethods::method4 with argument '" + arg + "'");
    }
}