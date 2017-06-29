;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:43:27 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:43:28 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isprint
	section .text

_ft_isprint:
	cmp rdi, ' '
	jl end
	cmp rdi, '~'
	jg end
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
