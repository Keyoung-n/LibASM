NAME	= libfts.a

SRC 	= ft_bzero.asm		\
				ft_isalpha.asm	\

SRCO	= ft_bzero.o		\
				ft_isalpha.o	\

all: $(NAME)

$(NAME):
	nasm -f elf64 $(SRC)
	gcc $(SRCO) main.c -o test
	# ar ruv $(NAME) $(SRCO)
	# ranlib $(NAME)
clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all
