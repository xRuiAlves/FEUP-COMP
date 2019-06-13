.class public Semantic
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	.limit locals 6
	.var 2 is local_arr [I
	.var 3 is local_p LParser;
	.var 4 is local_b Z
	.var 5 is local_i I
	iconst_2
	newarray int
	astore_2
	aload_2
	iconst_1
	iaload
	istore 5
	iconst_1
	ifeq false_0
	iconst_0
	ifeq false_0
	iconst_1
	goto done_0
false_0:
	iconst_0
done_0:
	istore 4
	new Parser
	dup
	invokespecial Parser/<init>()V
	astore_3
	iinc 5 2
	iload 5
	aload_2
	iconst_3
	iaload
	iadd
	istore 5
	aload_2
	iconst_4
	iconst_5
	iconst_2
	imul
	iadd
	iaload
	istore 5
	aload_2
	arraylength
	istore 5
	iload 4
	ifeq false_2
	iconst_1
	ifeq false_2
	iconst_1
	goto done_2
false_2:
	iconst_0
done_2:
	ifeq else_1
	iconst_2
	istore 5
	goto endif_1
else_1:
	iconst_3
	istore 5
endif_1:
loop_3:
	iconst_1
	iconst_2
	iadd
	iconst_5
	if_icmpge lt_false_4
	iconst_1
	goto lt_done_4
lt_false_4:
	iconst_0
lt_done_4:
	ifeq endloop_3
	iinc 5 1
	goto loop_3
endloop_3:
	invokestatic Parser/getInstance()V
	invokestatic null/getInteger()I
	istore 5
	return
.end method

.method public sumValues(II)I
	.limit stack 2
	.limit locals 3
	iload_1
	iload_2
	iadd
	ireturn
.end method

.method public sumValues(IIZ[I)I
	.limit stack 3
	.limit locals 6
	.var 5 is local_mean I
	aload_0
	iload_1
	iload_2
	invokevirtual Semantic/sumValues(II)I
	iconst_2
	idiv
	aload 4
	arraylength
	iconst_4
	idiv
	iadd
	istore 5
	iload 5
	ireturn
.end method

