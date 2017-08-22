NAME	= libfts.a

SRCO	= 	ft_bzero.o 		\
		ft_memset.o 		\
		ft_strlen.o 		\
		ft_isalpha.o		\
		ft_isprint.o		\
		ft_isdigit.o		

all: $(NAME)

$(NAME):
	@nasm -f macho64 ft_bzero.asm
	@nasm -f macho64 ft_memset.asm
	@nasm -f macho64 ft_strlen.asm
	@nasm -f macho64 ft_isalpha.asm
	@nasm -f macho64 ft_isdigit.asm
	@nasm -f macho64 ft_isprint

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
