.class public WhileTemplates
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
	.limit locals 4
	.var 2 is local_x I
	.var 3 is local_b I
	iconst_0
	istore_2
	iconst_1
	istore_3
	iload_2
	iconst_5
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
loop_0:
	iload_2
	invokestatic io/println(I)V
	iinc 2 1
	iload_2
	iconst_5
	if_icmpge lt_false_2
	iconst_1
	goto lt_done_2
lt_false_2:
	iconst_0
lt_done_2:
	ifne loop_0
endloop_0:
	iconst_0
	ifeq endloop_3
loop_3:
	sipush 12345
	invokestatic io/println(I)V
	iconst_0
	ifne loop_3
endloop_3:
loop_4:
	iload_3
	iconst_3
	if_icmpge lt_false_6
	iconst_1
	goto lt_done_6
lt_false_6:
	iconst_0
lt_done_6:
	ifeq false_5
	iload_2
	bipush 9
	if_icmpge lt_false_7
	iconst_1
	goto lt_done_7
lt_false_7:
	iconst_0
lt_done_7:
	ifeq false_5
	iconst_1
	goto done_5
false_5:
	iconst_0
done_5:
	ifeq endloop_4
	iload_2
	invokestatic io/println(I)V
	iinc 2 1
	iinc 3 1
	goto loop_4
endloop_4:
	sipush 555
	invokestatic io/println(I)V
loop_8:
	iload_2
	iconst_5
	iconst_5
	iadd
	iconst_3
	iadd
	iconst_1
	isub
	if_icmpge lt_false_9
	iconst_1
	goto lt_done_9
lt_false_9:
	iconst_0
lt_done_9:
	ifeq endloop_8
	iload_2
	invokestatic io/println(I)V
	iinc 2 1
	goto loop_8
endloop_8:
	return
.end method

