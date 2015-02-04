#include <libfts.h>
#include "libfts.h"

char	*ft_strmap(char const *s, char (*f)(char))
{
	(void)f;
	return ((char *)s);
}
