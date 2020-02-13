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
				cmp				rdx, 0			;check if fd is invalid
				je				ok				;if is valid return the value
				mov				rax, -1			;return -1 if invalid
				ret
ok:
				ret
