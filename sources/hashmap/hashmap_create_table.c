/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hashmap_create_table.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcouto <lcouto@student.42sp.org.br>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/07 00:48:28 by user42            #+#    #+#             */
/*   Updated: 2021/08/13 01:52:51 by lcouto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_hashmap	*hashmap_create_table(unsigned int size)
{
	t_hashmap		*new_table;
	unsigned int	i;

	i = 0;
	new_table = (t_hashmap *)ft_calloc(sizeof(t_hashmap), 1);
	new_table->size = size;
	new_table->count = 0;
	new_table->pairs = (t_pair **)ft_calloc(sizeof(t_hashmap), size);
	while (i < size)
	{
		new_table->pairs[i] = NULL;
		i++;
	}
	return (new_table);
}
