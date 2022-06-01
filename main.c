#include <stdio.h>
#include <unistd.h>
#include "ft_printf.h"

int	main()
{
	char	*ban;
	int	a = 42;
	ban = "banana";
	int return_value = ft_print_ptr(212313, HEX_LW);
	printf("\n%d\n", return_value);
}
