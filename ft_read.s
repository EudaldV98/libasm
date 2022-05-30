# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/09 20:25:24 by jvaquer           #+#    #+#              #
#    Updated: 2020/02/09 20:25:27 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


				global  _ft_read
				section __TEXT,__text
_ft_read:
				mov             rax, 0x2000003	;put read in syscall
				syscall							;call operting system to call read func
				jc				ok				;jmp to func to set rax to -1 if error ocurrs
				ret

ok:
				mov				rax, -1
				ret
