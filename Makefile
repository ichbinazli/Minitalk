# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: naanapa <naanapa@student.42kocaeli.com.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/25 12:48:46 by naanapa           #+#    #+#              #
#    Updated: 2024/03/27 14:44:55 by naanapa          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER			=	server
SERVER_SRC		=	server.c utils.c 


CLIENT			=	client
CLIENT_SRC		=	client.c utils.c 

CC				=	gcc
RM 				=	rm -rf
FLAGS			= 	-Wall -Werror -Wextra

SERVER_OBJS = $(SERVER_SRC:%.c=%.o)
CLIENT_OBJS = $(CLIENT_SRC:%.c=%.o)

all : $(SERVER) $(CLIENT)

$(NAME): all

$(SERVER) : $(SERVER_OBJS)
	$(CC) $(FLAGS) $(SERVER_SRC) -o $(SERVER)

$(CLIENT) : $(CLIENT_OBJS)
	$(CC) $(FLAGS) $(CLIENT_SRC) -o $(CLIENT)

clean :
	$(RM) $(CLIENT_OBJS) $(SERVER_OBJS)

fclean : clean
	$(RM) $(SERVER) $(CLIENT)

re : fclean all

.PHONY: all clean fclean re 