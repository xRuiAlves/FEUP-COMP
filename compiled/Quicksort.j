.class public Quicksort
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
	.limit locals 5
	.var 2 is local_L [I
	.var 3 is local_i I
	.var 4 is local_q LQuicksort;
	bipush 10
	newarray int
	astore_2
	iconst_0
	istore_3
loop_0:
	iload_3
	aload_2
	arraylength
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
	aload_2
	iload_3
	aload_2
	arraylength
	iload_3
	isub
	iastore
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_0
endloop_0:
	new Quicksort
	dup
	invokespecial Quicksort/<init>()V
	astore 4
	aload 4
	aload_2
	invokevirtual Quicksort/quicksort([I)Z
	aload 4
	aload_2
	invokevirtual Quicksort/printL([I)Z
	return
.end method

.method public printL([I)Z
	.limit stack 2
	.limit locals 3
	.var 2 is local_i I
	iconst_0
	istore_2
loop_2:
	iload_2
	aload_1
	arraylength
	if_icmpge lt_false_3
	iconst_1
	goto lt_done_3
lt_false_3:
	iconst_0
lt_done_3:
	ifeq endloop_2
	aload_1
	iload_2
	iaload
	invokestatic io/println(I)V
	iload_2
	iconst_1
	iadd
	istore_2
	goto loop_2
endloop_2:
	iconst_1
	ireturn
.end method

.method public quicksort([I)Z
	.limit stack 5
	.limit locals 2
	aload_0
	aload_1
	iconst_0
	aload_1
	arraylength
	iconst_1
	isub
	invokevirtual Quicksort/quicksort([III)Z
	ireturn
.end method

.method public quicksort([III)Z
	.limit stack 5
	.limit locals 5
	.var 4 is local_p I
	iload_2
	iload_3
	if_icmpge lt_false_5
	iconst_1
	goto lt_done_5
lt_false_5:
	iconst_0
lt_done_5:
	ifeq else_4
	aload_0
	aload_1
	iload_2
	iload_3
	invokevirtual Quicksort/partition([III)I
	istore 4
	aload_0
	aload_1
	iload_2
	iload 4
	iconst_1
	isub
	invokevirtual Quicksort/quicksort([III)Z
	pop
	aload_0
	aload_1
	iload 4
	iconst_1
	iadd
	iload_3
	invokevirtual Quicksort/quicksort([III)Z
	pop
	goto endif_4
else_4:
endif_4:
	iconst_1
	ireturn
.end method

.method public partition([III)I
	.limit stack 4
	.limit locals 8
	.var 4 is local_j I
	.var 5 is local_i I
	.var 6 is local_tmp I
	.var 7 is local_p I
	aload_1
	iload_3
	iaload
	istore 7
	iload_2
	istore 5
	iload_2
	istore 4
loop_6:
	iload 4
	iload_3
	if_icmpge lt_false_7
	iconst_1
	goto lt_done_7
lt_false_7:
	iconst_0
lt_done_7:
	ifeq endloop_6
	aload_1
	iload 4
	iaload
	iload 7
	if_icmpge lt_false_9
	iconst_1
	goto lt_done_9
lt_false_9:
	iconst_0
lt_done_9:
	ifeq else_8
	aload_1
	iload 5
	iaload
	istore 6
	aload_1
	iload 5
	aload_1
	iload 4
	iaload
	iastore
	aload_1
	iload 4
	iload 6
	iastore
	iload 5
	iconst_1
	iadd
	istore 5
	goto endif_8
else_8:
endif_8:
	iload 4
	iconst_1
	iadd
	istore 4
	goto loop_6
endloop_6:
	aload_1
	iload 5
	iaload
	istore 6
	aload_1
	iload 5
	aload_1
	iload_3
	iaload
	iastore
	aload_1
	iload_3
	iload 6
	iastore
	iload 5
	ireturn
.end method

