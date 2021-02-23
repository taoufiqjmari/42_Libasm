section .text
	global _ft_strcmp

_ft_strcmp:							; int		ft_strcmp(const char *s1, const char *s2);
	xor		rcx, rcx				; set counter to 0

_loop:
	mov		al, BYTE [rdi + rcx]	; save character of rdi in a register
	mov		dl, BYTE [rsi + rcx]	; save character of rsi in a register
	cmp		al, 0					; check if character is endline
	je		_return					; if so, goto return
	cmp		dl, 0					; check if character is endline
	je		_return					; if so, goto return
	cmp		al, dl					; compare the two characters
	jne		_return					; if not equal, goto return
	inc		rcx						; increment counter
	jmp		_loop					; repeat _loop

_return:
	cmp		al, dl					; compare the two character
	je		_equal					; if they are equal, goto _equal
	jg		_greater				; if they are equal, goto _greater
	jl		_less					; if they are equal, goto _less

_equal:
	mov		rax, 0					; set rax to 0
	ret								; return of function

_greater:
	mov		rax, 1					; set rax to 1
	ret								; return of function

_less:
	mov		rax, -1					; set rax to -1
	ret								; return of function
