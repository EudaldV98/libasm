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
; ft_strcpy(arg0 = rdi = dst, arg1 = rsi = src)
_ft_strcpy:
				xor				rax, rax
loop:
				mov				cl, [rsi + rax]
				cmp				cl, 0			;check EOS
				je				end
				mov				[rdi + rax], cl ;copy char
				inc				rax
				jmp				loop
end:
				mov				cl, 0			;put \0 at EOS
				mov				[rdi + rax], cl
				mov				rax, rdi
				ret
