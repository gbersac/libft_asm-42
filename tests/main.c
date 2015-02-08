#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>
#include "../libfts/inc/libfts.h"
#include <unistd.h>

int main()
{
	ft_puts("hello puts");
	ft_puts(NULL);

	char	*file_name = "tests/main.c";
	int fd = open(file_name, O_RDONLY);
	ft_cat(fd);
	ft_cat(0);
	return 0;
}
