NAME	= libfts.a

SRCO	= 	ft_bzero.o 		\
					ft_isalnum.o	\
					ft_isalpha.o	\
					ft_isascii.o  \
					ft_isdigit.o	\
					ft_isprint.o	\
					ft_memcpy.o		\
					ft_memset.o 	\
					ft_puts.o			\
					ft_strlen.o		\
					ft_strlen.o		\
					ft_strlen.o		\
					ft_tolower.o	\
					ft_toupper.o	\
					ft_cat.o
OS := $(shell uname)
all: $(NAME)

$(NAME):

ifeq ($(OS), Darwin)
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
	@nasm -f macho64 ft_strlen.s
	@nasm -f macho64 ft_tolower.s
	@nasm -f macho64 ft_toupper.s
	@nasm -f macho64 ft_cat.s
else
	@nasm -f elf64 ft_bzero.s
	@nasm -f elf64 ft_cat.s
	@nasm -f elf64 ft_isalnum.s
	@nasm -f elf64 ft_isalpha.s
	@nasm -f elf64 ft_isascii.s
	@nasm -f elf64 ft_isdigit.s
	@nasm -f elf64 ft_isprint.s
	@nasm -f elf64 ft_memcpy.s
	@nasm -f elf64 ft_memset.s
	@nasm -f elf64 ft_puts.s
	@nasm -f elf64 ft_strlen.s
	@nasm -f elf64 ft_tolower.s
	@nasm -f elf64 ft_toupper.s
	@nasm -f elf64 ft_cat.s
endif
	@ar r	$(NAME) $(SRCO)
	@ranlib $(NAME)

clean:
	@rm -f $(SRCO)

fclean: clean
	@rm -f $(NAME)

re: fclean all

run: re
ifeq ($(OS), Darwin)
	@gcc -o tests main.c $(NAME)
else
	@gcc -o tests main.linux.c $(NAME)
endif
	./tests
