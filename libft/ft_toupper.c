/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aaespino <aaespino@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/11 19:45:59 by aaespino          #+#    #+#             */
/*   Updated: 2022/01/20 13:06:38 by aaespino         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_toupper(int c)
{
	int	conversor;

	conversor = 32;
	if (c >= 'a' && c <= 'z')
	{
		c = c - conversor;
	}
	return (c);
}
