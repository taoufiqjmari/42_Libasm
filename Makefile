# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjmari <tjmari@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/20 12:00:58 by tjmari            #+#    #+#              #
#    Updated: 2021/02/20 14:48:44 by tjmari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NC = \033[0m
RED = \033[1;31m
GREEN = \033[1;32m
ORANGE = \033[1;33m

NAME = libasm.a
FLAGS = -f macho64

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)

%.o: %.s
	@nasm $(FLAGS) -o $@ $<

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@echo "$(GREEN)./$(NAME) made\n---------------$(NC)"

clean:
	@rm -f $(OBJS)
	@echo "$(ORANGE)*.o deleted\n-----------$(NC)"

fclean: clean
	@rm -f $(NAME)
	@echo "$(RED)./$(NAME) deleted\n------------------$(NC)"

re: fclean all
