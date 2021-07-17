@
@ Example of the ADD/ADC instructions.
@
.global _start		@ Provide program starting address

@ Multiply 2 by -1 by using MVN and then adding 1

_start: MVN		R0, #2
	ADD			R0, #1
	
@ Set up the parameters to exit the program
@ and then call Linux to do it.
@ R0 is the return code and will be what we
@ calculated above.
	MOV		R7, #1		@ Service command code 1
	SVC			0			@ Call Linux to terminate
