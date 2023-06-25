#  **************************************************************************  #
#                                                                              #
#                                                          :::      ::::::::   #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahabachi <ahabachi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/24 17:06:56 by ahabachi          #+#    #+#              #
#    Updated: 2022/11/24 17:13:37 by ahabachi         ###   ########.fr        #
#                                                                              #
#  **************************************************************************  #
#                                                                              #
#       ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄        #
#      ▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌       #
#      ▐░▌           ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀        #
#      ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌               ▐░▌            #
#      ▐░▌               ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░▌            #
#      ▐░▌               ▐░▌     ▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌     ▐░▌            #
#      ▐░▌               ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░▌            #
#      ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌               ▐░▌            #
#      ▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌               ▐░▌            #
#      ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░▌               ▐░▌            #
#       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀   ▀                 ▀             #
#                                                                              #
#  **************************************************************************  #
#   █████████            ██████████         ██████████         ██████████      #
#   ██     ██                    ██                 ██         ██      ██      #
#          ██                    ██                 ██         ██      ██      #
#          ██                    ██                 ██                 ██      #
#          ██            ██████████         ██████████                 ██      #
#          ██                    ██                 ██                 ██      #
#          ██                    ██                 ██                 ██      #
#          ██                    ██                 ██                 ██      #
#       ████████         ██████████         ██████████                 ██      #
#                                                                              #
#  **************************************************************************  #

MANDA_SOURCES	=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c\
					ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c\
					ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c\
					ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c\
					ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c\
					ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c\
					ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c\
					ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_SOURCES	=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c\
					ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c\
					ft_lstmap_bonus.c

MANDA_OBJECTS	=	${MANDA_SOURCES:.c=.o}
BONUS_OBJECTS	=	${BONUS_SOURCES:.c=.o}

FLAGS	= -Wall -Wextra -Werror
NAME	= libft.a
APPEND	= ar rc
CC		= cc
REMOVE	= rm -rf

.PHONY:	all bonus clean fclean re reset push norm

%.o: %.c libft.h
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${MANDA_OBJECTS} libft.h
	${APPEND} ${NAME} ${MANDA_OBJECTS}

all:	${NAME}

bonus:	${BONUS_OBJECTS} ${NAME}
	${APPEND} ${NAME} ${BONUS_OBJECTS}

clean:
	${REMOVE} ${MANDA_OBJECTS}
	${REMOVE} ${BONUS_OBJECTS}

fclean:
	@find .                              \
	-not -name "."                       \
	-not -name ".."                      \
	-not -name ".git"                    \
	-not -path "./.git/*"                \
	-not -name "ft_atoi.c"               \
	-not -name "ft_bzero.c"              \
	-not -name "ft_calloc.c"             \
	-not -name "ft_isalnum.c"            \
	-not -name "ft_isalpha.c"            \
	-not -name "ft_isascii.c"            \
	-not -name "ft_isdigit.c"            \
	-not -name "ft_isprint.c"            \
	-not -name "ft_itoa.c"               \
	-not -name "ft_memchr.c"             \
	-not -name "ft_memcmp.c"             \
	-not -name "ft_memcpy.c"             \
	-not -name "ft_memmove.c"            \
	-not -name "ft_memset.c"             \
	-not -name "ft_putchar_fd.c"         \
	-not -name "ft_putendl_fd.c"         \
	-not -name "ft_putnbr_fd.c"          \
	-not -name "ft_putstr_fd.c"          \
	-not -name "ft_split.c"              \
	-not -name "ft_strchr.c"             \
	-not -name "ft_strdup.c"             \
	-not -name "ft_striteri.c"           \
	-not -name "ft_strjoin.c"            \
	-not -name "ft_strlcat.c"            \
	-not -name "ft_strlcpy.c"            \
	-not -name "ft_strlen.c"             \
	-not -name "ft_strmapi.c"            \
	-not -name "ft_strncmp.c"            \
	-not -name "ft_strnstr.c"            \
	-not -name "ft_strrchr.c"            \
	-not -name "ft_strtrim.c"            \
	-not -name "ft_substr.c"             \
	-not -name "ft_tolower.c"            \
	-not -name "ft_toupper.c"            \
	-not -name "ft_lstadd_back_bonus.c"  \
	-not -name "ft_lstadd_front_bonus.c" \
	-not -name "ft_lstclear_bonus.c"     \
	-not -name "ft_lstdelone_bonus.c"    \
	-not -name "ft_lstiter_bonus.c"      \
	-not -name "ft_lstlast_bonus.c"      \
	-not -name "ft_lstmap_bonus.c"       \
	-not -name "ft_lstnew_bonus.c"       \
	-not -name "ft_lstsize_bonus.c"      \
	-not -name "libft.h"                 \
	-not -name "LICENSE"                 \
	-not -name "README.md"               \
	-not -name "Makefile"                \
	| xargs $(REMOVE)

re: fclean all

push: fclean
	@git add .
	@git commit -m "committed on '`date`' by '`whoami`', hostname = '`hostname`'"
	@git push

norm:
	@norminette
