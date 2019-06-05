.class public Life
.super java/lang/Object

; class fields:
.field public f_UNDERPOP_LIM I
.field public f_OVERPOP_LIM I
.field public f_REPRODUCE_NUM I
.field public f_LOOPS_PER_MS I
.field public f_xMax I
.field public f_yMax I
.field public f_field [I


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 2
	.limit locals 4
	.var 2 is local_l LLife;
	.var 3 is local_unused I
	new Life
	dup
	invokespecial Life/<init>()V
	astore_2
	aload_2
	invokevirtual Life/init()Z
loop_0:
	iconst_1
	ifeq endloop_0
	aload_2
	invokevirtual Life/printField()Z
	pop
	aload_2
	invokevirtual Life/update()Z
	pop
	invokestatic io/read()I
	istore_3
	goto loop_0
endloop_0:
	return
.end method

.method public init()Z
	.limit stack 9
	.limit locals 3
	.var 1 is local_lineLen I
	.var 2 is local_lineLenA [I
	iconst_1
	newarray int
	astore_2
	aload_0
	iconst_2
	putfield Life/f_UNDERPOP_LIM I
	aload_0
	iconst_3
	putfield Life/f_OVERPOP_LIM I
	aload_0
	iconst_3
	putfield Life/f_REPRODUCE_NUM I
	aload_0
	ldc 225000
	putfield Life/f_LOOPS_PER_MS I
	aload_0
	aload_0
	aload_2
	invokevirtual Life/field([I)[I
	putfield Life/f_field [I
	aload_2
	iconst_0
	iaload
	istore_1
	aload_0
	iload_1
	iconst_1
	isub
	putfield Life/f_xMax I
	aload_0
	aload_0
	getfield Life/f_field [I
	arraylength
	iload_1
	idiv
	iconst_1
	isub
	putfield Life/f_yMax I
	iconst_1
	ireturn
.end method

.method public field([I)[I
	.limit stack 3
	.limit locals 3
	.var 2 is local_field [I
	bipush 100
	newarray int
	astore_2
	aload_1
	iconst_0
	bipush 10
	iastore
	aload_2
	iconst_0
	iconst_0
	iastore
	aload_2
	iconst_1
	iconst_0
	iastore
	aload_2
	iconst_2
	iconst_1
	iastore
	aload_2
	iconst_3
	iconst_0
	iastore
	aload_2
	iconst_4
	iconst_0
	iastore
	aload_2
	iconst_5
	iconst_0
	iastore
	aload_2
	bipush 6
	iconst_0
	iastore
	aload_2
	bipush 7
	iconst_0
	iastore
	aload_2
	bipush 8
	iconst_0
	iastore
	aload_2
	bipush 9
	iconst_0
	iastore
	aload_2
	bipush 10
	iconst_1
	iastore
	aload_2
	bipush 11
	iconst_0
	iastore
	aload_2
	bipush 12
	iconst_1
	iastore
	aload_2
	bipush 13
	iconst_0
	iastore
	aload_2
	bipush 14
	iconst_0
	iastore
	aload_2
	bipush 15
	iconst_0
	iastore
	aload_2
	bipush 16
	iconst_0
	iastore
	aload_2
	bipush 17
	iconst_0
	iastore
	aload_2
	bipush 18
	iconst_0
	iastore
	aload_2
	bipush 19
	iconst_0
	iastore
	aload_2
	bipush 20
	iconst_0
	iastore
	aload_2
	bipush 21
	iconst_1
	iastore
	aload_2
	bipush 22
	iconst_1
	iastore
	aload_2
	bipush 23
	iconst_0
	iastore
	aload_2
	bipush 24
	iconst_0
	iastore
	aload_2
	bipush 25
	iconst_0
	iastore
	aload_2
	bipush 26
	iconst_0
	iastore
	aload_2
	bipush 27
	iconst_0
	iastore
	aload_2
	bipush 28
	iconst_0
	iastore
	aload_2
	bipush 29
	iconst_0
	iastore
	aload_2
	bipush 30
	iconst_0
	iastore
	aload_2
	bipush 31
	iconst_0
	iastore
	aload_2
	bipush 32
	iconst_0
	iastore
	aload_2
	bipush 33
	iconst_0
	iastore
	aload_2
	bipush 34
	iconst_0
	iastore
	aload_2
	bipush 35
	iconst_0
	iastore
	aload_2
	bipush 36
	iconst_0
	iastore
	aload_2
	bipush 37
	iconst_0
	iastore
	aload_2
	bipush 38
	iconst_0
	iastore
	aload_2
	bipush 39
	iconst_0
	iastore
	aload_2
	bipush 40
	iconst_0
	iastore
	aload_2
	bipush 41
	iconst_0
	iastore
	aload_2
	bipush 42
	iconst_0
	iastore
	aload_2
	bipush 43
	iconst_0
	iastore
	aload_2
	bipush 44
	iconst_0
	iastore
	aload_2
	bipush 45
	iconst_0
	iastore
	aload_2
	bipush 46
	iconst_0
	iastore
	aload_2
	bipush 47
	iconst_0
	iastore
	aload_2
	bipush 48
	iconst_0
	iastore
	aload_2
	bipush 49
	iconst_0
	iastore
	aload_2
	bipush 50
	iconst_0
	iastore
	aload_2
	bipush 51
	iconst_0
	iastore
	aload_2
	bipush 52
	iconst_0
	iastore
	aload_2
	bipush 53
	iconst_0
	iastore
	aload_2
	bipush 54
	iconst_0
	iastore
	aload_2
	bipush 55
	iconst_0
	iastore
	aload_2
	bipush 56
	iconst_0
	iastore
	aload_2
	bipush 57
	iconst_0
	iastore
	aload_2
	bipush 58
	iconst_0
	iastore
	aload_2
	bipush 59
	iconst_0
	iastore
	aload_2
	bipush 60
	iconst_0
	iastore
	aload_2
	bipush 61
	iconst_0
	iastore
	aload_2
	bipush 62
	iconst_0
	iastore
	aload_2
	bipush 63
	iconst_0
	iastore
	aload_2
	bipush 64
	iconst_0
	iastore
	aload_2
	bipush 65
	iconst_0
	iastore
	aload_2
	bipush 66
	iconst_0
	iastore
	aload_2
	bipush 67
	iconst_0
	iastore
	aload_2
	bipush 68
	iconst_0
	iastore
	aload_2
	bipush 69
	iconst_0
	iastore
	aload_2
	bipush 70
	iconst_0
	iastore
	aload_2
	bipush 71
	iconst_0
	iastore
	aload_2
	bipush 72
	iconst_0
	iastore
	aload_2
	bipush 73
	iconst_0
	iastore
	aload_2
	bipush 74
	iconst_0
	iastore
	aload_2
	bipush 75
	iconst_0
	iastore
	aload_2
	bipush 76
	iconst_0
	iastore
	aload_2
	bipush 77
	iconst_0
	iastore
	aload_2
	bipush 78
	iconst_0
	iastore
	aload_2
	bipush 79
	iconst_0
	iastore
	aload_2
	bipush 80
	iconst_0
	iastore
	aload_2
	bipush 81
	iconst_0
	iastore
	aload_2
	bipush 82
	iconst_0
	iastore
	aload_2
	bipush 83
	iconst_0
	iastore
	aload_2
	bipush 84
	iconst_0
	iastore
	aload_2
	bipush 85
	iconst_0
	iastore
	aload_2
	bipush 86
	iconst_0
	iastore
	aload_2
	bipush 87
	iconst_0
	iastore
	aload_2
	bipush 88
	iconst_0
	iastore
	aload_2
	bipush 89
	iconst_0
	iastore
	aload_2
	bipush 90
	iconst_0
	iastore
	aload_2
	bipush 91
	iconst_0
	iastore
	aload_2
	bipush 92
	iconst_0
	iastore
	aload_2
	bipush 93
	iconst_0
	iastore
	aload_2
	bipush 94
	iconst_0
	iastore
	aload_2
	bipush 95
	iconst_0
	iastore
	aload_2
	bipush 96
	iconst_0
	iastore
	aload_2
	bipush 97
	iconst_0
	iastore
	aload_2
	bipush 98
	iconst_0
	iastore
	aload_2
	bipush 99
	iconst_0
	iastore
	aload_2
	areturn
.end method

.method public update()Z
	.limit stack 4
	.limit locals 6
	.var 1 is local_neighN I
	.var 2 is local_newField [I
	.var 3 is local_i I
	.var 4 is local_goodPop Z
	.var 5 is local_cur I
	aload_0
	getfield Life/f_field [I
	arraylength
	newarray int
	astore_2
	iconst_0
	istore_3
loop_1:
	iload_3
	aload_0
	getfield Life/f_field [I
	arraylength
	if_icmpge lt_false_2
	iconst_1
	goto lt_done_2
lt_false_2:
	iconst_0
lt_done_2:
	ifeq endloop_1
	aload_0
	getfield Life/f_field [I
	iload_3
	iaload
	istore 5
	aload_0
	iload_3
	invokevirtual Life/getLiveNeighborN(I)I
	istore_1
	iload 5
	iconst_1
	if_icmpge lt_false_4
	iconst_1
	goto lt_done_4
lt_false_4:
	iconst_0
lt_done_4:
	iconst_1
	ixor
	ifeq else_3
	aload_0
	iload_1
	aload_0
	getfield Life/f_UNDERPOP_LIM I
	invokevirtual Life/ge(II)Z
	ifeq false_5
	aload_0
	iload_1
	aload_0
	getfield Life/f_OVERPOP_LIM I
	invokevirtual Life/le(II)Z
	ifeq false_5
	iconst_1
	goto done_5
false_5:
	iconst_0
done_5:
	istore 4
	iload 4
	iconst_1
	ixor
	ifeq else_6
	aload_2
	iload_3
	iconst_0
	iastore
	goto endif_6
else_6:
	aload_2
	iload_3
	aload_0
	getfield Life/f_field [I
	iload_3
	iaload
	iastore
endif_6:
	goto endif_3
else_3:
	aload_0
	iload_1
	aload_0
	getfield Life/f_REPRODUCE_NUM I
	invokevirtual Life/eq(II)Z
	ifeq else_7
	aload_2
	iload_3
	iconst_1
	iastore
	goto endif_7
else_7:
	aload_2
	iload_3
	aload_0
	getfield Life/f_field [I
	iload_3
	iaload
	iastore
endif_7:
endif_3:
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_1
endloop_1:
	aload_0
	aload_2
	putfield Life/f_field [I
	iconst_1
	ireturn
.end method

.method public printField()Z
	.limit stack 3
	.limit locals 3
	.var 1 is local_j I
	.var 2 is local_i I
	iconst_0
	istore_2
	iconst_0
	istore_1
loop_8:
	iload_2
	aload_0
	getfield Life/f_field [I
	arraylength
	if_icmpge lt_false_9
	iconst_1
	goto lt_done_9
lt_false_9:
	iconst_0
lt_done_9:
	ifeq endloop_8
	aload_0
	iload_1
	aload_0
	getfield Life/f_xMax I
	invokevirtual Life/gt(II)Z
	ifeq else_10
	invokestatic io/println()V
	iconst_0
	istore_1
	goto endif_10
else_10:
endif_10:
	aload_0
	getfield Life/f_field [I
	iload_2
	iaload
	invokestatic io/print(I)V
	iload_2
	iconst_1
	iadd
	istore_2
	iload_1
	iconst_1
	iadd
	istore_1
	goto loop_8
endloop_8:
	invokestatic io/println()V
	invokestatic io/println()V
	iconst_1
	ireturn
.end method

.method public trIdx(II)I
	.limit stack 3
	.limit locals 3
	iload_1
	aload_0
	getfield Life/f_xMax I
	iconst_1
	iadd
	iload_2
	imul
	iadd
	ireturn
.end method

.method public cartIdx(I)[I
	.limit stack 3
	.limit locals 6
	.var 2 is local_xLim I
	.var 3 is local_y I
	.var 4 is local_x I
	.var 5 is local_ret [I
	aload_0
	getfield Life/f_xMax I
	iconst_1
	iadd
	istore_2
	iload_1
	iload_2
	idiv
	istore_3
	iload_1
	iload_3
	iload_2
	imul
	isub
	istore 4
	iconst_2
	newarray int
	astore 5
	aload 5
	iconst_0
	iload 4
	iastore
	aload 5
	iconst_1
	iload_3
	iastore
	aload 5
	areturn
.end method

.method public getNeighborCoords(I)[I
	.limit stack 5
	.limit locals 10
	.var 2 is local_upY I
	.var 3 is local_cart [I
	.var 4 is local_upX I
	.var 5 is local_y I
	.var 6 is local_x I
	.var 7 is local_downX I
	.var 8 is local_downY I
	.var 9 is local_ret [I
	aload_0
	iload_1
	invokevirtual Life/cartIdx(I)[I
	astore_3
	aload_3
	iconst_0
	iaload
	istore 6
	aload_3
	iconst_1
	iaload
	istore 5
	iload 6
	aload_0
	getfield Life/f_xMax I
	if_icmpge lt_false_12
	iconst_1
	goto lt_done_12
lt_false_12:
	iconst_0
lt_done_12:
	ifeq else_11
	iload 6
	iconst_1
	iadd
	istore 7
	aload_0
	iload 6
	iconst_0
	invokevirtual Life/gt(II)Z
	ifeq else_13
	iload 6
	iconst_1
	isub
	istore 4
	goto endif_13
else_13:
	aload_0
	getfield Life/f_xMax I
	istore 4
endif_13:
	goto endif_11
else_11:
	iconst_0
	istore 7
	iload 6
	iconst_1
	isub
	istore 4
endif_11:
	iload 5
	aload_0
	getfield Life/f_yMax I
	if_icmpge lt_false_15
	iconst_1
	goto lt_done_15
lt_false_15:
	iconst_0
lt_done_15:
	ifeq else_14
	iload 5
	iconst_1
	iadd
	istore 8
	aload_0
	iload 5
	iconst_0
	invokevirtual Life/gt(II)Z
	ifeq else_16
	iload 5
	iconst_1
	isub
	istore_2
	goto endif_16
else_16:
	aload_0
	getfield Life/f_yMax I
	istore_2
endif_16:
	goto endif_14
else_14:
	iconst_0
	istore 8
	iload 5
	iconst_1
	isub
	istore_2
endif_14:
	bipush 8
	newarray int
	astore 9
	aload 9
	iconst_0
	aload_0
	iload 6
	iload_2
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	iconst_1
	aload_0
	iload 4
	iload_2
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	iconst_2
	aload_0
	iload 4
	iload 5
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	iconst_3
	aload_0
	iload 4
	iload 8
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	iconst_4
	aload_0
	iload 6
	iload 8
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	iconst_5
	aload_0
	iload 7
	iload 8
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	bipush 6
	aload_0
	iload 7
	iload 5
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	bipush 7
	aload_0
	iload 7
	iload_2
	invokevirtual Life/trIdx(II)I
	iastore
	aload 9
	areturn
.end method

.method public getLiveNeighborN(I)I
	.limit stack 4
	.limit locals 5
	.var 2 is local_neigh [I
	.var 3 is local_i I
	.var 4 is local_ret I
	iconst_0
	istore 4
	aload_0
	iload_1
	invokevirtual Life/getNeighborCoords(I)[I
	astore_2
	iconst_0
	istore_3
loop_17:
	iload_3
	aload_2
	arraylength
	if_icmpge lt_false_18
	iconst_1
	goto lt_done_18
lt_false_18:
	iconst_0
lt_done_18:
	ifeq endloop_17
	aload_0
	aload_0
	getfield Life/f_field [I
	aload_2
	iload_3
	iaload
	iaload
	iconst_0
	invokevirtual Life/ne(II)Z
	ifeq else_19
	iload 4
	iconst_1
	iadd
	istore 4
	goto endif_19
else_19:
endif_19:
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_17
endloop_17:
	iload 4
	ireturn
.end method

.method public busyWait(I)Z
	.limit stack 2
	.limit locals 4
	.var 2 is local_n I
	.var 3 is local_i I
	iload_1
	aload_0
	getfield Life/f_LOOPS_PER_MS I
	imul
	istore_2
	iconst_0
	istore_3
loop_20:
	iload_3
	iload_2
	if_icmpge lt_false_21
	iconst_1
	goto lt_done_21
lt_false_21:
	iconst_0
lt_done_21:
	ifeq endloop_20
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_20
endloop_20:
	iconst_1
	ireturn
.end method

.method public eq(II)Z
	.limit stack 3
	.limit locals 3
	aload_0
	iload_1
	iload_2
	invokevirtual Life/lt(II)Z
	iconst_1
	ixor
	ifeq false_22
	aload_0
	iload_2
	iload_1
	invokevirtual Life/lt(II)Z
	iconst_1
	ixor
	ifeq false_22
	iconst_1
	goto done_22
false_22:
	iconst_0
done_22:
	ireturn
.end method

.method public ne(II)Z
	.limit stack 3
	.limit locals 3
	aload_0
	iload_1
	iload_2
	invokevirtual Life/eq(II)Z
	iconst_1
	ixor
	ireturn
.end method

.method public lt(II)Z
	.limit stack 2
	.limit locals 3
	iload_1
	iload_2
	if_icmpge lt_false_23
	iconst_1
	goto lt_done_23
lt_false_23:
	iconst_0
lt_done_23:
	ireturn
.end method

.method public le(II)Z
	.limit stack 3
	.limit locals 3
	aload_0
	iload_1
	iload_2
	invokevirtual Life/lt(II)Z
	iconst_1
	ixor
	ifeq false_24
	aload_0
	iload_1
	iload_2
	invokevirtual Life/eq(II)Z
	iconst_1
	ixor
	ifeq false_24
	iconst_1
	goto done_24
false_24:
	iconst_0
done_24:
	iconst_1
	ixor
	ireturn
.end method

.method public gt(II)Z
	.limit stack 3
	.limit locals 3
	aload_0
	iload_1
	iload_2
	invokevirtual Life/le(II)Z
	iconst_1
	ixor
	ireturn
.end method

.method public ge(II)Z
	.limit stack 3
	.limit locals 3
	aload_0
	iload_1
	iload_2
	invokevirtual Life/gt(II)Z
	iconst_1
	ixor
	ifeq false_25
	aload_0
	iload_1
	iload_2
	invokevirtual Life/eq(II)Z
	iconst_1
	ixor
	ifeq false_25
	iconst_1
	goto done_25
false_25:
	iconst_0
done_25:
	iconst_1
	ixor
	ireturn
.end method

