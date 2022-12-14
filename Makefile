# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sakllam <sakllam@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/02 16:37:56 by sakllam           #+#    #+#              #
#    Updated: 2022/11/07 20:05:52 by sakllam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: clean build

build:
	mkdir -p /home/sakllam/data/mysql
	mkdir -p /home/sakllam/data/wordpress
	docker-compose -f srcs/docker-compose.yml up --build

stop:
	docker-compose -f srcs/docker-compose.yml down

up:
	docker-compose -f srcs/docker-compose.yml up

clean:
	rm -rf /home/sakllam/data/mysql
	rm -rf /home/sakllam/data/wordpress
	docker-compose -f srcs/docker-compose.yml down -v
.PHONY: all clean build stop up