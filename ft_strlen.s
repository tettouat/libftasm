;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/06 16:26:27 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/06 16:26:27 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strlen
section .text

_ft_strlen:
	push rdi
	mov rcx, 0
	mov al, 0x0
	not rcx
	cld
	repne scasb
	not rcx
	dec rcx
	pop rdi
	mov rax, rcx
	ret
