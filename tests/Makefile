# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbersac <gbersac@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/04/22 13:15:39 by gbersac           #+#    #+#              #
#    Updated: 2015/02/03 20:32:45 by gbersac          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
# BASIC VARIABLES															   #
################################################################################

SRCS				:= main.c 
PATH_OBJ			:= obj
PATH_SRC			:= src
PATH_INC			:= inc

CFLAGS				:= -Wall -Wextra -Werror
OBJECTS				:= $(patsubst %.c, $(PATH_OBJ)/%.o, $(SRCS))

################################################################################
# LIBRARY VARIABLES															   #
################################################################################

export DIR_FT		:= ../$(DIR_FT)

LIB_LIBFT			:= -L$(DIR_FT) -lfts

export DIR_LIB 		:= $(patsubst %,../%,$(DIR_LIB))
LIBRARY				:= $(LIB_BASICS) $(LIB_LIBFT)
INCLUDES			:= -I./$(PATH_INC) $(patsubst %,-I%/inc,$(DIR_LIB))

################################################################################
# BASIC RULES																   #
################################################################################

.PHONY: all

all: $(NAME)

$(NAME): $(OBJECTS)
	cc -o $@ $(OBJECTS) $(LIBRARY) $(DEBUG)

$(PATH_OBJ)/%.o: $(addprefix $(PATH_SRC)/,%.c)
	@mkdir -p $(PATH_OBJ)
	cc -c -o $@ $(CFLAGS) $^ $(DEBUG) $(INCLUDES)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
