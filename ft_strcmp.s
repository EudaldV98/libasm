# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 17:17:34 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/06 17:23:07 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global	_ft_strcmp
				section	__TEXT,__text
_ft_strcmp:
		mov		rcx, 0
loop:
		mov		rax, 0
		mov		al, [rdi]
		mov		cl, [rsi]
		inc		rdi
		inc		rsi
		sub		rax, rcx
		jz		loop
end:
		ret
