/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oespion <oespion@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/04 11:23:32 by oespion           #+#    #+#             */
/*   Updated: 2018/05/12 17:53:26 by oespion          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_toupper(char *str)
{
	int	r;

	r = 0;
	while (str[r])
	{
		if (str[r] >= 'a' && str[r] <= 'z')
			str[r] -= 32;
		r++;
	}
	return (str);
}
