/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/06 16:58:10 by tettouat          #+#    #+#             */
/*   Updated: 2015/02/25 17:35:14 by tettouat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <string.h>

char	*ft_strcat(char *s1, const char *s2);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_isdigit(int c);
void	ft_bzero(void *s, size_t n);
int		ft_isalpha(int c);
int		ft_isalnum(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
size_t	ft_strlen(char *s);
int		ft_puts(const char *s);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, void *src, size_t n);

#endif
