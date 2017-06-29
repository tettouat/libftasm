;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:52:38 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:52:39 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_tolower
	section .text

_ft_tolower:
	cmp rdi, 'A'
	jl end
	cmp rdi, 'Z'
	jle op
	mov rax, rdi
	ret

op:
	add rdi, 32
	mov rax, rdi
	ret

end:
	mov rax, rdi
	ret
