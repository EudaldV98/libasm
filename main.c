/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 17:34:20 by jvaquer           #+#    #+#             */
/*   Updated: 2020/02/09 18:26:11 by jvaquer          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

size_t  ft_strlen(const char *);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int     main(int argc, char **argv)
{
	char dst[1000];
	
	printf ("MY LEN		= %zu\n", ft_strlen(argv[1]));
	printf ("TRUE LEN	= %zu\n\n", strlen(argv[1]));

	printf ("MY CPY		= %s\n", ft_strcpy(dst, argv[1]));
	printf ("TRUE CPY	= %s\n\n", strcpy(dst, argv[1]));

	printf ("MY CMP		= %d\n", ft_strcmp(argv[1], argv[2]));
	printf ("TRUE CMP	= %d\n\n", strcmp(argv[1], argv[2]));
	return (0);
}
