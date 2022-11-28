FILES		=	ft_printf \
				ft_printf_utils \
				ft_print_u \
				ft_print_hex \
				ft_print_ptr

SRCS		=	$(addprefix $(DIRSRC), $(addsuffix .c, $(FILES)))
OBJS		=	$(addprefix $(DIRSRC), $(addsuffix .o, $(FILES)))

INCLUDE	=	./include

DIRLIB		=	./libft
DIRSRC		=	./src/
NAME		=	libftprintf.a

NAMELFT		=	./libft/libft.a

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror -I

$(DIRSRC)%.o : $(DIRSRC)%.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

all			:	$(NAME)

$(NAME)		:	$(OBJS)
	cd $(DIRLIB) && $(MAKE) 
	cp $(NAMELFT) $(NAME)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean		:
	cd $(DIRLIB) && $(MAKE) clean
	rm -f $(OBJS)

fclean		:	clean
	rm -f $(NAME) $(NAMELFT)

re			:	fclean all

.PHONY		:	all clean fclean re