/**
 * LogicalTest
 */
public class LogicalTest {
    public static void main(String[] args) {
        boolean f = false;
        boolean t = true;
        boolean bool;

        int a = 2;
        int b = 3;
        int x;

        if (t) {
            LogicalTest.bar();
        } else {
            LogicalTest.foo();
        }

        bool = t && LogicalTest.foo() && f;
        bool = f && LogicalTest.foo() && t;

        bool = !!bool;
        bool = !!!bool;

        bool = a < b;

        if (a < b) {
            x = 123;
        } else {
            x = 456;
        }
    }

    public static boolean foo() {
        System.out.println("foo called");
        return true;
    }

    public static void bar() {
        System.out.println("bar called");
    }
}