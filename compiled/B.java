class B extends A {
    public static void main(String[] args) {
        A a = new B();

        a.foo();
    }

    public int foo() {
        System.out.println("B called");
        return 0;
    }
}