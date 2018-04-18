# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atourner <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/07 10:28:24 by atourner          #+#    #+#              #
#    Updated: 2018/04/12 16:03:56 by atourner         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INCLUDES_LIB=includes

all: comp_lem error_test normal_test validity_test

comp_lem:
	@printf "Compiling your lem-in\n"
	@make -C ../

error_test:
	@printf "Testing error, check error.txt if there is error\n"
	@sh scripts/error.sh $(val)

validity_test :
	@printf "Testing validity, check validity.txt if there is error\n"
	@sh scripts/validity.sh $(val)

normal_test:
	@echo "\nNormal launch\nif green, optimal is reach\nif orange, optimal isn't reach\nif red, reponse if false\nCheck normal.txt\nIt only check the number of moves, not if it is correct ! Check the result yourself!"
	@sh scripts/normal.sh $(val)

clean:
	@rm -rf leaks error lem-in normal normal.txt error.txt ant validity validity.txt ../lem-in.dSYM/
	@make fclean -C ../
