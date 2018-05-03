/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oespion <oespion@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/04 11:22:17 by oespion           #+#    #+#             */
/*   Updated: 2018/05/03 16:16:32 by oespion          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int	ft_strequ(char const *s1, char const *s2)
{
	int r;

	r = 0;
	if (!s1 || !s2)
		return (0);
	while (s1[r] && s2[r])
	{
		if (s1[r] != s2[r])
			return (0);
		r++;
	}
	if (s1[r] == '\0' && s2[r] == '\0')
		return (1);
	return (0);
}
