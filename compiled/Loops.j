.class public Loops
.super java/lang/Object

; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 3
	.var 2 is i I
	iconst_0
	istore_2
loop_0:
	iload_2
	iconst_5
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
	iload_2
	invokestatic io/println(I)V
	iload_2
	iconst_1
	iadd
	istore_2
	goto loop_0
endloop_0:
	return
.end method

