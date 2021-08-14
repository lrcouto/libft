# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcouto <lcouto@student.42sp.org.br>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 20:37:04 by lcouto            #+#    #+#              #
#    Updated: 2021/08/14 16:32:14 by lcouto           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEADERS = -I includes

DIR_SRCS = sources

DIR_OBJS = objects

DIRS = str mem lst ascii gnl hashmap

SRC = $(wildcard $(DIR_SRCS)/*.c)

SOURCEDIRS = $(foreach dir, $(DIRS), $(addprefix $(DIR_SRCS)/, $(dir)))

SOURCES = $(foreach dir,$(SOURCEDIRS),$(wildcard $(dir)/*.c))

OBJS = $(subst $(DIR_SRCS),$(DIR_OBJS),$(SOURCES:.c=.o))

CC	= clang

RM	= rm -rf

CFLAGS	= -Wall -Wextra -Werror -g $(HEADERS)

ifeq ($(SANITIZE_A),true)
	CFLAGS += -fsanitize=address -fno-omit-frame-pointer
endif

ifeq ($(SANITIZE_L),true)
	CFLAGS += -fsanitize=leak -fno-omit-frame-pointer
endif

$(NAME): $(OBJS)
	@ar -rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Created libft.a file successfully"

$(DIR_OBJS)/%.o: $(DIR_SRCS)/%.c
		@mkdir -p objects
		@mkdir -p objects/ascii
		@mkdir -p objects/gnl
		@mkdir -p objects/hashmap
		@mkdir -p objects/lst
		@mkdir -p objects/mem
		@mkdir -p objects/str
		@$(CC) $(CFLAGS) $(HEADER) -c $< -o $@
		@echo "Compiled "$<" successfully!"

all: $(NAME)

clean:
		@$(RM) $(OBJS)
		@$(RM) $(DIR_OBJS)

fclean:	clean
		@$(RM) $(NAME)
		@$(RM) $(DIR_OBJS)

re:		fclean all

PHONY:	all clean fclean re
