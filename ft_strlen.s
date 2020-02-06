# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 16:43:40 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/06 17:07:18 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


				global	_ft_strlen
				section	__TEXT,__text
_ft_strlen:
				mov				rax, 0
				mov				rcx, 0
loop:
				mov				cl, [rdi + rax]
				cmp				rcx, 0
				jne				reloop
				jmp				end
newloop:
				inc				rax
				jmp				loop
end:
				ret
