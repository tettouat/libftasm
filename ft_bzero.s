;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/05 15:54:09 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/05 15:54:11 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_bzero
	section .text

_ft_bzero:
	cmp rsi, byte 0
	je end
	mov [rdi], byte 0
	inc rdi
	dec rsi
	jmp _ft_bzero

end:
	ret
