/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 17:34:20 by jvaquer           #+#    #+#             */
/*   Updated: 2020/02/09 20:40:58 by jvaquer          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

size_t  ft_strlen(const char *);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, const void *buf, size_t count);
int     main(int argc, char **argv)
{
	char dst[1000];
	
	printf ("MY LEN		= %zu\n", ft_strlen(argv[1]));
	printf ("TRUE LEN	= %zu\n\n", strlen(argv[1]));

	printf ("MY CPY		= %s\n", ft_strcpy(dst, argv[1]));
	printf ("TRUE CPY	= %s\n\n", strcpy(dst, argv[1]));

	printf ("MY CMP		= %d\n", ft_strcmp(argv[1], argv[2]));
	printf ("TRUE CMP	= %d\n\n", strcmp(argv[1], argv[2]));

	printf ("MY WRITE	= %ld\n", ft_write(1, "hello\n", 6));
	printf ("TRUE WRITE	= %ld\n\n", write(1, "hello\n", 6));
	
	int ret;
	ret = (int)ft_read(0, dst, 6);
	printf("ret is %d, read '%.*s'\n", ret, ret, dst);
	ret = (int)ft_read(0, dst, 6);
	printf("ret is %d, read '%.*s'\n", ret, ret, dst);
	return (0);
}
