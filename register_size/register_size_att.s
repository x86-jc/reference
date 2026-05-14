#################################################
# Title		:	Register Sizes					#
# Creator	:	John J. Coleman					#
# Creation Date	:	2026.05.14					#
# Modified Date	:	2026.05.14					#
# 												#
# Brief:										#
# What can we do with different sized 			#
# registers?									#
#################################################

.section .data
buff:
	.ascii "a"

.section .bss

.section .text
.global _start
_start:
	mov $buff, %r8
	mov (%r8), %bl
#	mov %r8, %bl		# We cannot copy values from a larger register into a smaller register
	movzbq %bl, %r8		# We can copy values from a smaller register into a larger register

	mov $60, %rax
	mov $1, %rdi
	syscall
