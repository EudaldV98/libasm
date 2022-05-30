# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/12 16:17:54 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/12 16:17:56 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_strdup
			extern _ft_strlen
			extern _ft_strcpy
			extern _malloc
			section __TEXT,__text
_ft_strdup:
			call			_ft_strlen
			push			rdi
			inc 			rax
			mov				rdi, rax

alloc:
			call			_malloc
			cmp				rax, 0
			jle				error
			pop				rdi
			mov				rsi, rdi
			mov				rdi, rax
			call			_ft_strcpy
			ret

error:
			xor				rax, rax
			ret
