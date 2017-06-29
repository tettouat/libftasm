;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:48:06 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:48:07 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_toupper
	section .text

_ft_toupper:
	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jle op
	mov rax, rdi
	ret

op:
	sub rdi, 32
	mov rax, rdi
	ret

end:
	mov rax, rdi
	ret
