;###############################################;
; Title         :       Register Sizes          ;
; Creator       :       John J. Coleman         ;
; Creation Date :       2026.05.14              ;
; Modified Date :       2026.05.14              ;
;                                               ;
; Brief:                                        ;
; What can we do with different sized           ;
; registers?                                    ;
;###############################################;

SECTION .data
	buff:	db	"a"

SECTION .bss

SECTION .text

	mov r8, buff
	mov bl, [r8]
;	mov bl, r8				; We cannot copy a larger register into a smaller register
	movzx r8, bl			; We can copy a smaller register into a larger register (here we zero-fill)

	mov rax, 60
	mov rdi, 0
	syscall
