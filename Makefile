NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC = ft_write.c ft_putnbr.c ft_printf.c ft_print_ptr.c ft_print_base.c

OBJDIR = objs/

OBJ = $(addprefix ${OBJDIR}, $(SRC:.c=.o))

all: $(NAME)

$(NAME) : $(OBJ)
	ar rcs $@ $?

${OBJDIR}%.o:%.c
	@mkdir -p ${@D}
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:		all clean fclean re
