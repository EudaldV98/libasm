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
				jmp				loop
loop:
				mov				rax, 0
				mov				r8, 0
				mov				r9, 0
				mov				r8b, [rdi]
				mov				r9b, [rsi]
				inc				rdi
				inc				rsi
				cmp				r9, byte 0
				je				end
				sub				r8, r9
				cmp				r8, byte 0
				jne				end
				jz				loop
end:
				mov				rax, r8
				ret
