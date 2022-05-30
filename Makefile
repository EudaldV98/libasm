# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jvaquer <jvaquer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/09 10:57:50 by jvaquer           #+#    #+#              #
#    Updated: 2020/03/11 11:05:22 by jvaquer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ASM = nasm

ASMFLAGS = -f macho64 -g

OBJECTS = ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o

NAME = libasm.a

TEST_BINARY = test

TEST_FILES = main.c

TEST_CC = gcc

TEST_CFLAGS = -Wall -Wextra -Werror

.PHONY: all re clean fclean

%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)

all: $(NAME)

$(TEST_BINARY): $(TEST_FILES)
	$(TEST_CC) $(TEST_CFLAGS) $(TEST_FILES) $(NAME) -o $(TEST_BINARY)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME) $(TEST_BINARY)

re: fclean all