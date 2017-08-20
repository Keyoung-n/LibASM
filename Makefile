NAME	= libfts.a

SRCO	= ft_bzero.o		\
				ft_isalpha.o	\
				ft_memset.o		\

all: $(NAME)

$(NAME):
	@nasm -f elf64 ft_bzero.asm
	@nasm -f elf64 ft_isalpha.asm
	@nasm -f elf64 ft_memset.asm
	@ar r $(NAME) $(SRCO)
	@ranlib $(NAME)

clean:
	@rm -f $(SRCO)

fclean: clean
	@rm -f $(NAME)

re: fclean all

run: all
	@gcc -o tests main.c $(NAME)
	./tests
