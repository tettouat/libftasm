;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/06 16:57:49 by tettouat          #+#    #+#              ;
;    Updated: 2015/02/06 16:57:50 by tettouat         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_strcat
	section .text

	_ft_strcat:
		mov rcx, 0
		cmp [rsi], byte 0
		je end
		while_1:
			cmp [rdi + rcx], byte 0
			je while_2
			inc rcx
			jmp while_1
		while_2:
			cmp [rsi], byte 0
			je end
			mov r11, [rsi]
			mov [rdi + rcx], r11
			inc rsi
			inc rcx
			jmp while_2
		end:
			mov rax, rdi
			ret
