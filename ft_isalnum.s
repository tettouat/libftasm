;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 17:40:08 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 17:40:09 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalnum
	section .text

_ft_isalnum:
	cmp rdi, '0'
	jl end
	cmp rdi, '9'
	jle endsuccess
	cmp rdi, 'A'
	jl end
	cmp rdi, 'Z'
	jle endsuccess
	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jle endsuccess
	jmp end

endsuccess:
	mov rax, 1
	ret

end:
	mov rax, 0
	ret
