# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbersac <gbersac@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/30 12:40:20 by gbersac           #+#    #+#              #
#    Updated: 2015/02/03 20:27:43 by gbersac          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
# SOURCES       															   #
################################################################################

SRCS		= bzero.s

################################################################################
# BASIC VARIABLES															   #
################################################################################

PATH_OBJ	= obj
PATH_SRC	= src
PATH_INC	= inc

NAME		= libfts.a
CFLAGS		= -Wall -Wextra -Werror
OBJECTS		= $(patsubst %.s, $(PATH_OBJ)/%.o, $(SRCS))
DEBUG		= -g -O0

################################################################################
# RULES																		   #
################################################################################

.PHONY: all

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar rc $@ $(OBJECTS)
	@ranlib $(NAME)
	@echo Creating Library $(NAME) $(words $(OBJECTS)) files inside

$(PATH_OBJ)/%.o: $(addprefix $(PATH_SRC)/,%.s)
	@mkdir -p $(PATH_OBJ)
	~/.brew/bin/nasm -f macho64 $^ -o $@ -g

clean:
	@rm -f $(OBJECTS)
	@echo Delete $(words $(OBJECTS)) object file

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
