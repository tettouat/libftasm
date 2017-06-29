;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/06 19:05:37 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/06 19:05:38 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

extern _ft_strlen
global _ft_puts
	_ft_puts:
	section .text
	mov rcx, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x00004
	mov rdi, 1
	mov rsi, rcx
	syscall
	push 10
	pop rax
	ret
