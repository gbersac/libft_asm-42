# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yyang <yyang@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/12/08 14:30:51 by celegran          #+#    #+#              #
#    Updated: 2015/02/04 20:11:57 by gbersac          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all

all: libft_part1 

libft_part1:
	@make -C libft_tests part1

update_deps:
	rm -rf testframework/v3/lst
	mkdir -p testframework/v3/lst
	cp ../projects/common/libft/srcs/lst/* testframework/v3/lst
	cp ../projects/common/libft/includes/lst.h testframework/v3/includes/lst.h

check:
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/libft make -k libft_bonus
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/libft_part1 make -k libft_part1
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/libft_part2 make -k libft_part2
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/libft make -k libft_part2
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/get_next_line make -k gnl
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/get_next_line_with_libft make -k gnl
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/ft_ls make -k ft_ls
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/ft_printf make -k ft_printf
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/ft_printf_with_libft make -k ft_printf
	RENDU_PATH=$(shell pwd)/testframework/fake_rendu/ft_printf make -k ft_printf PATTERN=01

