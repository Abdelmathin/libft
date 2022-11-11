/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/06 23:20:10 by ahabachi          #+#    #+#             */
/*   Updated: 2022/10/06 23:20:11 by ahabachi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	if (n < 1)
		return (0);
	if (*(unsigned char *)s != (unsigned char )c)
		return (ft_memchr(s + 1, c, n - 1));
	return ((void *)s);
}
