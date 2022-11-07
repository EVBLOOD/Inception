# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sakllam <sakllam@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/02 16:37:56 by sakllam           #+#    #+#              #
#    Updated: 2022/11/07 15:56:07 by sakllam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: clean build

build:
	# echo "127.0.0.1	sakllam.42.fr" > /etc/hosts
	mkdir -p ./data/mysql
	mkdir -p ./data/wordpress
	docker-compose -f srcs/docker-compose.yml up --build

stop:
	docker-compose -f srcs/docker-compose.yml down

up:
	docker-compose -f srcs/docker-compose.yml up

clean:
	rm -rf ./data/mysql
	rm -rf ./data/wordpress
	docker-compose -f srcs/docker-compose.yml down -v

fclean: clean
	docker system prune --force --all
