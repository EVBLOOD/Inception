# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sakllam <sakllam@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/02 16:37:56 by sakllam           #+#    #+#              #
#    Updated: 2022/11/03 13:54:46 by sakllam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: clean build

build:
	mkdir -p /Users/sakllam/Desktop/data/mysql && mkdir -p /Users/sakllam/Desktop/data/wordpress && docker-compose -f srcs/docker-compose.yml up --build

stop:
	docker-compose -f srcs/docker-compose.yml down

up:
	docker-compose -f srcs/docker-compose.yml up

clean:
	rm -rf /Users/sakllam/Desktop/data/mysql && rm -rf /Users/sakllam/Desktop/data/wordpress
	docker-compose -f srcs/docker-compose.yml down -v

fclean: clean
	docker system prune --force --all