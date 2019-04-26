; class with sintax accepted by jasmin 2.3
.class public Hello
.super java/lang/Object

;
; standard initializer
.method public <init>()V
    aload_0
    
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 2
    ;.limit locals 2 ; this example does not need local variables

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Hello World!"
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method