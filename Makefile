NAME	= libfts.a

SRCO	= 	ft_cat.o			\
					ft_bzero.o 		\
					ft_isalnum.o	\
					ft_isalpha.o	\
					ft_isascii.o  \
					ft_isdigit.o	\
					ft_isprint.o	\
					ft_memcpy.o		\
					ft_memset.o 	\
					ft_puts.o			\
					ft_strcat.o		\
					ft_strdup.o		\
					ft_strlen.o		\
					ft_tolower.o	\
					ft_toupper.o

OS := $(shell uname)
all: $(NAME)

$(NAME):
	@nasm -f macho64 ft_bzero.s
	@nasm -f macho64 ft_cat.s
	@nasm -f macho64 ft_isalnum.s
	@nasm -f macho64 ft_isalpha.s
	@nasm -f macho64 ft_isascii.s
	@nasm -f macho64 ft_isdigit.s
	@nasm -f macho64 ft_isprint.s
	@nasm -f macho64 ft_memcpy.s
	@nasm -f macho64 ft_memset.s
	@nasm -f macho64 ft_puts.s
	@nasm -f macho64 ft_strcat.s
	@nasm -f macho64 ft_strdup.s
	@nasm -f macho64 ft_strlen.s
	@nasm -f macho64 ft_tolower.s
	@nasm -f macho64 ft_toupper.s
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
