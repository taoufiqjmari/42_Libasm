section .text
	global _ft_strlen

_ft_strlen:					; size_t	ft_strlen(const char *str);
	xor rax, rax			; set return value (rax) to 0

_loop:
	cmp BYTE [rdi + rax], 0	; check if *(str + rax) == 0 (rdi is the first parameter)
	je	_return				; if *(str + rax) == 0 goto _return
	inc rax					; if not, increment rax;
	jmp _loop				; repeat _loop

_return:
	ret						; return of function (rax)
