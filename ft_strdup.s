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
			extern _malloc
			section __TEXT,__text
_ft_strdup:
			mov				rax, 0
strlen:
			cmp				[rdi + rax], byte 0
			je				alloc
			inc				rax
			jmp				strlen
alloc:
			push			rdi
			mov				rdi, rax
			inc				rdi
			call			_malloc
			cmp				rax, 0
			je				end
			pop				rdi
			mov				rcx, 0
copy:
			mov				dl, [rdi, rcx]
			cmp				dl, 0
			jz				end
			mov				[rax + rcx], dl
			inc				rcx
			jmp				copy
end:
			mov				[rax + rcx], byte 0
			ret
