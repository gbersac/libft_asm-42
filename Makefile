# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbersac <gbersac@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/29 21:17:54 by gbersac           #+#    #+#              #
#    Updated: 2015/02/04 18:50:50 by gbersac          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
# BASIC VARIABLES															   #
################################################################################

export DEBUG		:= -g -O0
export NAME			:= test

################################################################################
# LIBRARY VARIABLES															   #
################################################################################

export DIR_FT		:= libfts

export DIR_LIB		:= $(DIR_FT)

################################################################################
# RULES																		   #
################################################################################

.PHONY: all $(DIR_LIB)

all:  $(DIR_LIB)

prog:
	make re -C$(APP)
	@rm -f $(NAME)
	@cp -n $(APP)/$(NAME) .

test:
	make -Ctests


clean:
	make RULE=clean

fclean:
	make RULE=fclean

re:
	make RULE=re

