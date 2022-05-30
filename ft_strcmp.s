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

			global		_ft_strcmp
			section __TEXT,__text

_ft_strcmp:
			mov 			r8b, [rdi]
			mov 			r9b, [rsi]
			cmp 			r8b, r9b
			jg 				ret_neg
			jl 				ret_pos
			cmp 			[rdi], byte 0
			jz 				check

next:
			inc 			rsi
			inc 			rdi
			jmp 			_ft_strcmp


check:
			cmp 			[rsi], byte 0
			jz 				ret_zero
			jmp 			next

ret_pos:
			mov 			rax, -1
			ret

ret_neg:
			mov 			rax, 1
			ret

ret_zero:
			mov 			rax, 0
			ret