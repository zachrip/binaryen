	.text
	.file	"950621-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f                       # -- Begin function f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	block   	
	block   	
	i32.eqz 	$push7=, $0
	br_if   	0, $pop7        # 0: down to label1
# BB#1:                                 # %land.lhs.true
	i32.load	$push0=, 0($0)
	i32.const	$push4=, -1
	i32.eq  	$push1=, $pop0, $pop4
	br_if   	1, $pop1        # 1: down to label0
.LBB0_2:                                # %land.end
	end_block                       # label1:
	i32.const	$push5=, 0
	return  	$pop5
.LBB0_3:                                # %land.rhs
	end_block                       # label0:
	i32.load	$push2=, 4($0)
	i32.const	$push6=, -1
	i32.eq  	$push3=, $pop2, $pop6
                                        # fallthrough-return: $pop3
	.endfunc
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.section	.text.main,"ax",@progbits
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function

	.ident	"clang version 6.0.0 (https://llvm.googlesource.com/clang.git a1774cccdccfa673c057f93ccf23bc2d8cb04932) (https://llvm.googlesource.com/llvm.git fc50e1c6121255333bc42d6faf2b524c074eae25)"
	.functype	exit, void, i32
