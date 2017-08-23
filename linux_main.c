#include <stdio.h>

char *ft_strdup(char *str);

int main()
{
    char *base = "HI fam\0";
    char *ret;

    ret = ft_strdup(base);
    printf("base = %s\nret = %s", base, ret);
    return 0;
}
