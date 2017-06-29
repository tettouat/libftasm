;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/09 15:52:56 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/09 15:52:57 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memcpy
	section .text

_ft_memcpy:
	push rdi
	mov rcx, rdx
	mov rax, rdi

opt:
	rep movsb

end:
	pop rdi
	mov rax, rdi
	ret
