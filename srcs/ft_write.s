section .text
	global _ft_write

_ft_write: 					; ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
							;					rdi			rsi				rdx
	mov rax, 0x2000004		; system call number (sys_write)
	syscall					; call kernel
	jc _error				; [jump if carry] if write failed, flag carries 1
	ret						; if not, return

_error:
	mov	rax, -1				; set return to -1
	ret						; return of function (rax)
