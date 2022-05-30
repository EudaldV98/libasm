/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 17:34:20 by jvaquer           #+#    #+#             */
/*   Updated: 2020/03/11 11:40:37 by jvaquer          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int     main(void)
{
	char dst[1000];
	int	ret;

	printf("-----FT_STRLEN-----\n");
	printf("Test: ''.\n");
	printf ("MY LEN		= %zu\n", ft_strlen(""));
	printf ("TRUE LEN	= %zu\n\n", strlen(""));

	printf("Test: 'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm'.\n");
	printf ("MY LEN		= %zu\n", ft_strlen("qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));
	printf ("TRUE LEN	= %zu\n\n", strlen("qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));

	printf("-----FT_STRCPY-----\n");
	printf ("MY CPY		= %s\n", ft_strcpy(dst, ""));
	printf ("TRUE CPY	= %s\n\n", strcpy(dst, ""));

	printf ("MY CPY		= %s\n", ft_strcpy(dst, "qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));
	printf ("TRUE CPY	= %s\n\n", strcpy(dst, "qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));

	printf("-----FT_STRCMP-----\n");
	printf ("MY CMP		= %d\n", ft_strcmp("a", ""));
	printf ("TRUE CMP	= %d\n\n", strcmp("a", ""));

	printf ("MY CMP		= %d\n", ft_strcmp("", "a"));
	printf ("TRUE CMP	= %d\n\n", strcmp("", "a"));

	printf ("MY CMP		= %d\n", ft_strcmp("qwer", "qwertyuiopasdfghjklzxcvbnm"));
	printf ("TRUE CMP	= %d\n\n", strcmp("qwer", "qwertyuiopasdfghjklzxcvbnm"));

	printf ("MY CMP		= %d\n", ft_strcmp("qwertyuiopasdfghjklzxcvbnm", "qwer"));
	printf ("TRUE CMP	= %d\n\n", strcmp("qwertyuiopasdfghjklzxcvbnm", "qwer"));
	
	printf("-----WRITE-----\n");
	printf ("MY WRITE	= %ld\n", ft_write(1, "hello\n", 6));
	printf ("TRUE WRITE	= %ld\n\n", write(1, "hello\n", 6));
	printf ("MY WRITE	= %ld\n", ft_write(-5, "hello\n", 6));
	printf ("TRUE WRITE	= %ld\n\n", write(-5, "hello\n", 6));
	printf ("MY WRITE	= %ld\n", ft_write(1, "hello\n", -3));
	printf ("TRUE WRITE	= %ld\n\n", write(1, "hello\n", -3));

	printf("-----READ-----\n");
	ret = (int)ft_read(1, dst, 6);
	printf("MY ret is %d, read '%.*s'\n", ret, ret, dst);
	ret = (int)ft_read(1, dst, 6);
	printf("TRUE ret is %d, read '%.*s'\n\n", ret, ret, dst);

	printf("-----FT_STRDUP-----\n");
	printf("MY DUP		= '%s'\n", ft_strdup("hello"));
	printf("TRUE DUP	= '%s'\n", strdup("hello"));
	printf("MY DUP		= '%s'\n", ft_strdup("qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));
	printf("TRUE DUP	= '%s'\n", strdup("qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm"));
	printf("MY DUP		= '%s'\n", ft_strdup(""));
	printf("TRUE DUP	= '%s'\n", strdup(""));
	return (0);
}
