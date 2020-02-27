/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcouto <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/27 11:22:26 by lcouto            #+#    #+#             */
/*   Updated: 2020/01/30 20:17:30 by lcouto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <unistd.h>

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t i;
	size_t j;

	i = 0;
	if (*needle == '\0')
	{
		return ((char *)haystack);
	}
	while (haystack[i] != '\0' && i < len)
	{
		if (haystack[i] == needle[0])
		{
			j = 1;
			while ((haystack[i + j] == needle[j]) && (i + j) < len &&
			needle[j] != '\0')
				j++;
			if (needle[j] == '\0')
			{
				haystack = &haystack[i];
				return ((char*)haystack);
			}
		}
		i++;
	}
	return (NULL);
}
