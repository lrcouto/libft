/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hashmap_free_table.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcouto <lcouto@student.42sp.org.br>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/07 02:04:20 by user42            #+#    #+#             */
/*   Updated: 2021/08/13 01:52:51 by lcouto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	hashmap_free_table(t_hashmap *table)
{
	unsigned int	i;
	t_pair			*current;
	t_pair			*temp;

	i = 0;
	while (i < table->size)
	{
		current = table->pairs[i];
		while (current != NULL)
		{
			temp = current->next;
			hashmap_free_pair(current);
			current = temp;
		}
		i++;
	}
	free(table->pairs);
	free(table);
}
