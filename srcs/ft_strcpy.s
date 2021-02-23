section .text
	global _ft_strcpy

_ft_strcpy:							; char	*ft_strcpy(char *dst, const char *s);
	xor		rcx, rcx				; set counter to 0

_loop:
	cmp		BYTE [rsi + rcx], 0		; check *(src + rcx) != 0
	je		_return					; if so, goto _return
	mov		dl, BYTE [rsi + rcx]	; if not, copy chaaracter in dest into dl
	mov		BYTE [rdi + rcx], dl	; copy character in dl into src
	inc		rcx						; increment counter
	jmp		_loop					; repeat loop

_return:
	mov		BYTE [rdi, rcx], 0		; put '\0' at end of dest
	mov		rax, rdi				; put dest in rax
	ret								; return rax
