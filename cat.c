#include <fcntl.h>
void ft_cat(int fd);

int main()
{
    int fd = open("main.c",  O_RDWR);

    ft_cat(fd);
}
