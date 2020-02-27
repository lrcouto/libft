# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcouto <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 20:37:04 by lcouto            #+#    #+#              #
#    Updated: 2020/02/27 10:50:48 by lcouto           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS =	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isascii.c ft_isdigit.c \
		ft_isprint.c ft_memccpy.c ft_memchr.c ft_memcpy.c ft_memmove.c ft_memset.c \
		ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c ft_isalpha.c ft_memcmp.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_split.c ft_strmapi.c

BONUSSRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

ADDISRCS = ft_strnew.c ft_strdel.c

OBJECTS = ft_atoi.o ft_bzero.o ft_calloc.o ft_isalnum.o ft_isascii.o ft_isdigit.o \
		ft_isprint.o ft_memccpy.o ft_memchr.o ft_memcpy.o ft_memmove.o ft_memset.o \
		ft_strchr.o ft_strdup.o ft_strlcat.o ft_strlcpy.o ft_strlen.o ft_strncmp.o \
		ft_strnstr.o ft_strrchr.o ft_tolower.o ft_toupper.o ft_isalpha.o ft_memcmp.o \
		ft_substr.o ft_strjoin.o ft_strtrim.o ft_itoa.o ft_putchar_fd.o ft_putstr_fd.o \
		ft_putendl_fd.o ft_putnbr_fd.o ft_split.o ft_strmapi.o

BONUSOBJS = ft_lstnew.o ft_lstadd_front.o ft_lstsize.o ft_lstlast.o ft_lstadd_back.o \
			ft_lstdelone.o ft_lstclear.o ft_lstiter.o ft_lstmap.o

ADDIOBJS = ft_strnew.o ft_strdel.o

INCLUDES = ./

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -I$(INCLUDES) -c $(SRCS)	libft.h
	ar -rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

bonus: $(NAME)
	gcc -Wall -Wextra -Werror -I$(INCLUDES) -c $(SRCS) $(BONUSSRCS) libft.h
	ar -rc $(NAME) $(OBJECTS) $(BONUSOBJS)
	ranlib $(NAME)

additionals: $(NAME)
	gcc -Wall -Wextra -Werror -I$(INCLUDES) -c $(SRCS) $(ADDISRCS) libft.h
	ar -rc $(NAME) $(OBJECTS) $(ADDIOBJS)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJECTS) $(BONUSOBJS) $(ADDIOBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re bonus
