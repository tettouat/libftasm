;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/11 17:11:24 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/11 17:11:25 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_memset
	section .text

_ft_memset:
	push rdi
	mov rcx, rdx
	mov rax, rsi

opt:
	rep stosb

end:
	pop rdi
	mov rax, rdi
	ret
