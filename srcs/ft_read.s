section .text
	global _ft_read

_ft_read: 					; ssize_t	ft_read(int fildes, const void *buf, size_t nbytes);
							;					rdi			rsi				rdx
	mov rax, 0x2000003		; system call number (sys_read)
	syscall					; call kernel
	jc _error				; [jump if carry] if read failed, flag carries 1
	ret						; if not, return

_error:
	mov	rax, -1				; set return to -1
	ret						; return of function (rax)
