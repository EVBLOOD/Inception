# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sakllam <sakllam@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/02 16:37:56 by sakllam           #+#    #+#              #
#    Updated: 2022/11/02 16:37:59 by sakllam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:
	mkdir -p /Users/sakllam/Desktop/data/mysql && mkdir -p /Users/sakllam/Desktop/data/wordpress && docker-compose up --build

stop:
	docker-compose down

up:
	docker-compose up

clean:
	rm -rf /Users/sakllam/Desktop/data/mysql && rm -rf /Users/sakllam/Desktop/data/wordpress
	docker-compose down -v

fclean: clean
	docker system prune --force --all