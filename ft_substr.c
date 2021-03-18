/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcouto <lcouto@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/28 15:59:21 by lcouto            #+#    #+#             */
/*   Updated: 2021/03/18 20:33:40 by lcouto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*substr;
	size_t	i;

	i = 0;

	if (!s || !(substr = ft_calloc(len + 1, sizeof(char))))
		return (NULL);
	while (s[i] && i < len && (start + i < ft_strlen(s)))
	{
		substr[i] = s[start + i];
		i++;
	}
	return (substr);
}
