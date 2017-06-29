;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:28:57 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:28:58 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalpha
	section .text

_ft_isalpha:
	cmp rdi, 'A'
	jl end
	cmp rdi, 'Z'
	jle endsuccess
	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jle endsuccess

end:
	xor rax, rax
	ret

endsuccess:
	mov rax, 1
	ret
