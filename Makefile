# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jschmitt <jschmitt@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/22 16:18:51 by jschmitt          #+#    #+#              #
#    Updated: 2023/09/19 18:40:27 by jschmitt         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell

SRCS =	./srcs/main.c \
		./srcs/exec/pipeline.c \
		./srcs/exec/pipeline2.c \
		./srcs/exec/pipeline3.c \
		./srcs/exec/pipeline4.c \
		./srcs/exec/executor.c \
		./srcs/exec/executor2.c \
		./srcs/exec/signal.c \
 		./srcs/exec/exec_builtins.c \
		./srcs/exec/redir.c \
		./srcs/exec/redir_utils.c \
		./srcs/exec/heredoc.c \
		./srcs/exec/heredoc_utils.c \
		./srcs/exec/heredoc_expand.c \
		./srcs/exec/heredoc_filling.c \
		./srcs/exec/free.c \
		./srcs/exec/free_utils.c \
		./srcs/parsing/lexer.c \
		./srcs/parsing/lexer_utils.c \
		./srcs/parsing/lexer_utils2.c \
		./srcs/parsing/lexer_utils3.c \
		./srcs/parsing/lexer_utils4.c \
		./srcs/parsing/parser.c\
		./srcs/parsing/parser_utils.c\
		./srcs/parsing/parser_utils2.c\
		./srcs/parsing/parser_utils3.c\
		./srcs/parsing/parser_utils4.c\
 		./srcs/parsing/expander.c \
 		./srcs/parsing/expander_utils.c \
 		./srcs/parsing/expander_utils2.c \
 		./srcs/parsing/expander_utils3.c \
 		./srcs/parsing/expander_utils4.c \
 		./srcs/parsing/handle_quotes.c \
 		./srcs/builtins/echo.c \
		./srcs/builtins/pwd.c \
		./srcs/builtins/cd.c \
		./srcs/builtins/env.c \
		./srcs/builtins/setenv.c \
		./srcs/builtins/export.c \
		./srcs/builtins/export_no_arg.c \
		./srcs/builtins/unset.c \
		./srcs/builtins/exit.c \
		./srcs/builtins/errors.c \
		./srcs/builtins/msg_error.c \
		./srcs/builtins/ft_atol.c \
		./srcs/builtins/ft_strcmp.c
	
OBJS = $(SRCS:.c=.o)

LIBFT = ./libft

INC = -I. -I$(LIBFT) -I /Users/$$USER/.brew/opt/readline/include

CC = gcc $(FLAGS) $(INC)

FLAGS = -Wall -Wextra -Werror -g

all: libft $(NAME)

libft:
	make -C $(LIBFT)

clean:
	rm -f $(OBJS)
	make -C $(LIBFT) clean

fclean: clean
	rm -f $(NAME)
	make -C $(LIBFT) fclean

re: fclean all

$(NAME): $(SRCS) $(OBJS)
	make -C $(LIBFT)
	$(CC) $(OBJS) $(LIBFT)/libft.a -lreadline -L /Users/$$USER/.brew/opt/readline/lib -o $(NAME)
