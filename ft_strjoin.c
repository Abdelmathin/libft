/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/06 14:46:35 by ahabachi          #+#    #+#             */
/*   Updated: 2022/10/06 14:46:37 by ahabachi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	int		l1;
	int		l2;
	char	*s3;

	if (s1 && !s2)
		return (ft_strdup(s1));
	if (!s1 && s2)
		return (ft_strdup(s2));
	if (!s1 && !s2)
		return (0);
	l1 = ft_strlen(s1);
	l2 = ft_strlen(s2);
	s3 = ft_calloc(l1 + l2 + 1, sizeof(char));
	if (!s3)
		return (s3);
	ft_memmove(s3, s1, l1);
	ft_memmove(s3 + l1, s2, l2);
	return (s3);
}
