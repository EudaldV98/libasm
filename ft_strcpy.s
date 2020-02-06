# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 17:04:47 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/06 17:19:02 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global	_ft_strcpy
				section	__TEXT,__text
_ft_strcpy:
				mov				rax, 0
				mov				rax, 0
loop:
				mov				cl, [rsi + rax]
				cmp				cl, 0
				jvaquer			end
				mov				[rdi + rax], cl
				inc				rax
				jmp				loop
end:
				mov				cl, 0
				mov				[rdi + rax], cl
				mov				rax, rdi
				ret
