NAME	= libfts.a

SRCO	= 	ft_bzero.o 		\
					ft_memset.o 	\
					ft_strlen.o		\
					ft_isalpha.o	\
					ft_isprint.o	\
					ft_isdigit.o	\
					ft_strlen.o		\
					ft_puts.o			\
					ft_isalnum.o	\
					ft_isascii.o  \
					ft_toupper.o	\
					ft_tolower.o	\
					ft_memcpy.o		\

OS := $(shell uname)
all: $(NAME)

$(NAME):
ifeq ($(OS), Darwin)
	@nasm -f macho64 ft_bzero.asm
	@nasm -f macho64 ft_isalnum.asm
	@nasm -f macho64 ft_isalpha.asm
	@nasm -f macho64 ft_isascii.asm
	@nasm -f macho64 ft_isdigit.asm
	@nasm -f macho64 ft_isprint.asm
	@nasm -f macho64 ft_memcpy.asm
	@nasm -f macho64 ft_memset.asm
	@nasm -f macho64 ft_puts.asm
	@nasm -f macho64 ft_strlen.asm
	@nasm -f macho64 ft_tolower.asm
	@nasm -f macho64 ft_toupper.asm
else
	@nasm -f elf64 ft_bzero.asm
	@nasm -f elf64 ft_isalnum.asm
	@nasm -f elf64 ft_isalpha.asm
	@nasm -f elf64 ft_isascii.asm
	@nasm -f elf64 ft_isdigit.asm
	@nasm -f elf64 ft_isprint.asm
	@nasm -f elf64 ft_memcpy.asm
	@nasm -f elf64 ft_memset.asm
	@nasm -f elf64 ft_puts.asm
	@nasm -f elf64 ft_strlen.asm
	@nasm -f elf64 ft_tolower.asm
	@nasm -f elf64 ft_toupper.asm
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
