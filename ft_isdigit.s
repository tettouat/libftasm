;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 16:44:09 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 16:44:11 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isdigit
	section .text

_ft_isdigit:
	cmp rdi, '9'
	jg end
	cmp rdi, '0'
	jl end
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
