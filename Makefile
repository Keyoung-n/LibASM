NAME	= libfts.a

SRCO	= ft_bzero.o		\
				ft_isalpha.o	\

all: $(NAME)

$(NAME):
	@nasm -f elf64 ft_bzero.asm
	@nasm -f elf64 ft_isalpha.asm
	@ar ruv $(NAME) $(SRCO)
	@ranlib $(NAME)

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all

run: all
	@gcc -o tests -Wall -Wextra -Werror main.c $(NAME)
	./tests
