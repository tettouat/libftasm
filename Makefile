# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tettouat <tettouat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/05 15:51:52 by tettouat          #+#    #+#              #
#    Updated: 2015/06/02 14:55:08 by tettouat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_bzero.s\
		ft_isdigit.s\
		ft_isascii.s\
		ft_isalpha.s\
		ft_isalnum.s\
		ft_isprint.s\
		ft_toupper.s\
		ft_tolower.s\
		ft_strlen.s\
		ft_strcat.s\
		ft_puts.s\
		ft_memcpy.s\
		ft_strdup.s\
		ft_cat.s\
		ft_memset.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.s
	@nasm -f macho64 $^

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
