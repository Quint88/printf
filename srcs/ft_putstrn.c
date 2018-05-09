/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstrn.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oespion <oespion@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/07 15:57:55 by oespion           #+#    #+#             */
/*   Updated: 2018/05/09 17:59:47 by oespion          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"
#include <stdio.h>

void	ft_putstrn(t_list *printef)
{
	int		r;
	int		len_width;
	char	*str;

	r = 0;
	if (!printef->str)
		return ;
	if (printef->precision != -1)
		len_width = printef->precision;
	else
		len_width = ft_strlen(printef->str);
	while (len_width < printef->width)
	{
		ft_putchar(' ');
		len_width++;
	}
	str = (char*)printef->str;
	while (str[r] && r < printef->precision)
	{
		ft_putchar(str[r]);
		r++;
	}
}
