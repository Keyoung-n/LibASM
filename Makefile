NAME	= libfts.a

SRCO	= ft_bzero.o		\
				ft_memset.o		\

all: $(NAME)

$(NAME):
	@nasm -f elf64 ft_bzero.asm
	@nasm -f elf64 ft_memset.asm
	@nasm -f elf64 ft_isprint.asm
	@ar r	$(NAME) $(SRCO)
	@ranlib $(NAME)

clean:
	@rm -f $(SRCO)

fclean: clean
	@rm -f $(NAME)

re: fclean all

run: re
	@gcc -o tests main.c $(NAME)
	./tests
