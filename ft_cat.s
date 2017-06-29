;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/10 16:35:05 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/10 16:35:06 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_cat
	section .data
		buffer times 255 db 0
		bufsize equ $-buffer

	section .text
_ft_cat:
	push rbp
	mov rbp, rsp

read:
	push rdi
	lea rsi, [rel buffer]
	mov rdx, bufsize
	mov rax, 0x2000003
	syscall
	jc end
	cmp rax, 0
	je end
	mov rdi, 1
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	pop rdi
	jmp read

end:
	mov rsp, rbp
	pop rbp
	ret
