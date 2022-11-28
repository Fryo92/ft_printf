FILES	=	ft_isalpha ft_isdigit ft_isalnum \
			ft_isascii ft_isprint \
			ft_memset ft_memcpy ft_memmove \
			ft_memchr ft_memcmp \
			ft_toupper ft_tolower ft_bzero \
			ft_putchar_fd ft_putstr_fd \
			ft_putendl_fd ft_putnbr_fd \
			ft_strlcpy ft_strlcat ft_strdup \
			ft_strncmp ft_strlen \
			ft_strchr ft_strrchr ft_strnstr ft_strtrim \
			ft_strjoin ft_striteri ft_strmapi \
			ft_substr ft_split \
			ft_atoi ft_itoa ft_calloc \
			ft_lstnew ft_lstsize ft_lstlast \
			ft_lstadd_back ft_lstadd_front ft_lstdelone \
			ft_lstclear ft_lstiter ft_lstmap 

SRCS	=	$(addsuffix .c, $(FILES))
OBJS	=	$(addsuffix .o, $(FILES))

NAME	=	libft.a
DIRLIB	=	../include
CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror -I

%.o	: %.c
	$(CC) $(CFLAGS) $(DIRLIB) -c $< -o $@

all		:	$(NAME)

$(NAME)	:	$(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean	:
	rm -f $(OBJS)

fclean	:	clean
	rm -f $(NAME)

re		:	fclean all

.PHONY	:	all clean fclean re