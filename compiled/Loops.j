.class public Loops
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 2
	.limit locals 4
	.var 2 is local_l LLoops;
	.var 3 is local_i I
	new Loops
	dup
	invokespecial Loops/<init>()V
	astore_2
	iconst_0
	istore_3
loop_0:
	iload_3
	iconst_5
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
	iload_3
	invokestatic io/println(I)V
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_0
endloop_0:
loop_2:
	aload_2
	invokevirtual Loops/testFalse()Z
	ifeq endloop_2
	sipush 12345
	invokestatic io/println(I)V
	goto loop_2
endloop_2:
	return
.end method

.method public testFalse()Z
	.limit stack 1
	.limit locals 1
	iconst_0
	ireturn
.end method

