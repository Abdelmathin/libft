/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/06 14:55:14 by ahabachi          #+#    #+#             */
/*   Updated: 2022/10/06 14:55:15 by ahabachi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s1, char const *set)
{
	size_t	l1;

	if (!s1 || !set)
		return ((char *)s1);
	while (*s1 && ft_strchr(set, *s1))
		s1++;
	l1 = ft_strlen(s1);
	while (l1 && ft_strchr(set, s1[l1 - 1]))
		l1--;
	return (ft_substr(s1, 0, l1));
}
