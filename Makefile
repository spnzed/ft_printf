# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaespino <aaespino@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/08 16:25:50 by aaespino          #+#    #+#              #
#    Updated: 2022/04/26 19:13:48 by aaespino         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= 	libftprintf.a

INCLUDE_DIR		= include
SRC_DIR			= src
OBJ_DIR			= obj
LIBFT			= libft

INC			= -I $(INCLUDE_DIR)

SRC		= 	./src/ft_printf.c \
			./src/ft_printf_ch_str.c \
			./src/ft_printf_ptr_int.c \
			./src/ft_printf_uns_per.c \
			./src/ft_printf_x_X.c \

OBJ = $(SRC:.c=.o)

CC		=	gcc
CFLAGS	= -Wall -Werror -Wextra -g $(INC)
RM = rm -f

all: $(NAME)

$(NAME): $(OBJ) ./include/ft_printf.h
	@make -C libft
	@mv libft/libft.a ${NAME}
	@ar rc $(NAME) $(OBJ)
	@echo "\033[1;32mCompiled $(NAME)"

clean: 
	@$(RM) $(OBJ)
	@make clean -C $(LIBFT)

fclean:	clean
	@$(RM) $(NAME)
	@make fclean -C $(LIBFT)

re:	fclean all