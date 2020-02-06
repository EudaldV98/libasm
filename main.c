/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 17:34:20 by jvaquer           #+#    #+#             */
/*   Updated: 2020/02/06 17:58:38 by jvaquer          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

size_t  ft_strlen(const char *);

int     main(int argc, char **argv)
{
    printf ("MY LEN = %zu\n", ft_strlen(argv[1]));
    printf ("RE LEN = %zu\n", strlen(argv[1]));
    return (0);
}
