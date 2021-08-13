/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hashmap_create_pair.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcouto <lcouto@student.42sp.org.br>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/06 21:17:27 by user42            #+#    #+#             */
/*   Updated: 2021/08/13 01:52:51 by lcouto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_pair	*hashmap_create_pair(char *key, char *value)
{
	t_pair	*new_pair;

	new_pair = (t_pair *)ft_calloc(sizeof(t_pair), 1);
	new_pair->key = ft_strdup(key);
	new_pair->value = ft_strdup(value);
	return (new_pair);
}
