# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/09 20:22:06 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/09 20:22:08 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


				global	_ft_write
				section	__TEXT,__text
_ft_write:
				mov				rax, 0x2000004	;put write in the syscall register
				syscall							;call the operating system to call write function
				jc				ok				;jmp to func to set rax to -1 if error ocurrs
				ret

ok:
				mov				rax, -1
				ret
