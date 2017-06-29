;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:25:55 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:25:56 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isascii
	section .text

_ft_isascii:
	cmp rdi, 127
	jg end
	cmp rdi, 0
	jl end
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
