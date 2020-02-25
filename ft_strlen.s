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
				mov				rax, 0	;clean rax
				mov				rcx, 0	;clean rcx
loop:
				mov				cl, [rdi + rax]	;rdi + rax in cl
				cmp				rcx, 0			;check end of string
				jne				newloop			;jmp if not equal
				jmp				end				;if equal go to end
newloop:
				inc				rax				;inc in rax
				jmp				loop			;return to loop
end:
				ret
