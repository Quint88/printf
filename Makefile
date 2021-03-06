CC=gcc
AR=ar
ARFLAGS=rc
CFLAGS=-Wall -Wextra -Werror
NAME=libftprintf.a
SRC=  srcs/ft_atoi.c  \
      srcs/ft_putchar.c \
      srcs/ft_strcmp.c  \
      srcs/ft_strncmp.c \
      srcs/ft_isalpha.c \
      srcs/ft_strdup.c  \
      srcs/ft_strlen.c  \
      srcs/ft_strncpy.c \
      srcs/ft_isprint.c \
      srcs/ft_strcpy.c  \
      srcs/ft_memcmp.c  \
      srcs/ft_memccpy.c \
      srcs/ft_memalloc.c  \
      srcs/ft_strcat.c  \
      srcs/ft_strncat.c \
      srcs/ft_strchr.c  \
      srcs/ft_strrchr.c \
      srcs/ft_strnew.c  \
      srcs/ft_strdel.c  \
      srcs/ft_strclr.c  \
      srcs/ft_strequ.c  \
      srcs/ft_strnequ.c \
      srcs/ft_striter.c \
      srcs/ft_striteri.c  \
      srcs/ft_strmap.c  \
      srcs/ft_strmapi.c \
      srcs/ft_strtrim.c \
      srcs/ft_bzero.c \
      srcs/ft_memdel.c  \
      srcs/ft_strfjoin.c  \
      srcs/ft_memchr.c  \
      srcs/ft_memmove.c \
      srcs/ft_memcpy.c  \
      srcs/ft_isalnum.c \
      srcs/ft_strstr.c  \
      srcs/ft_toupper.c \
      srcs/ft_tolower.c \
      srcs/ft_isascii.c \
      srcs/ft_putstr_fd.c \
      srcs/ft_putnbr_fd.c \
      srcs/ft_putendl_fd.c  \
      srcs/ft_putendl.c \
      srcs/ft_itoa.c  \
      srcs/ft_putnbr_longlong.c  \
      srcs/ft_strnstr.c \
      srcs/ft_strjoin.c \
      srcs/ft_strsub.c  \
      srcs/ft_strsplit.c  \
      srcs/ft_memset.c  \
      srcs/ft_isdigit.c \
      srcs/ft_putchar_fd.c  \
      srcs/ft_putstr.c  \
      srcs/ft_sort_int.c  \
      srcs/ft_power.c \
      srcs/ft_abs.c \
      srcs/ft_is_lowercase.c  \
      srcs/ft_is_uppercase.c  \
      srcs/ft_free_tab.c  \
      srcs/get_next_line.c  \
      srcs/ft_printf.c  \
      srcs/ft_printable.c \
      srcs/tools.c  \
      srcs/ft_putstrn.c \
      srcs/ft_putnbrn.c \
      srcs/ft_putcharn.c \
      srcs/convert_base.c \
      srcs/printable_adv.c \
      srcs/ft_puthexan.c \
      srcs/ft_putnbru.c \
      srcs/convert_base_int.c \
      srcs/longlong_len.c \
      srcs/tools2.c \
      srcs/ft_putnbr_uintmax.c

C_GREEN	=	"\033[32m"
C_BLUE	=	"\033[36m"
C_BASE	=	"\033[00m"

OBJ=$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(ARFLAGS) $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo $(C_GREEN)"[PRINTF QUI PRINT ET QUI COMPILE !]" $(C_BASE)
%.o: %.c
	@gcc $(CFLAGS) -c $< -o $@ -I includes/
	@echo "file =" $(C_BLUE){ $< } $(C_BASE)
clean:
	@rm -f $(OBJ)
	@echo $(C_GREEN)"[CLEAN]" $(C_BASE)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
