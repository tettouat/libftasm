;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/09 14:36:27 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/09 14:36:28 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

extern _ft_strlen
extern _malloc
global _ft_strdup
	section .text

_ft_strdup :
	push rdi
	call _ft_strlen
	mov rcx, rax
	push rcx
	mov rdi, rax
	call _malloc
	pop rcx
	pop rsi
	mov rdi, rax
	cld
	repnz movsb

end:
	ret
