#include <stdlib.h>
#include <strings.h>
#include <stdio.h>
#include <string.h>

void ft_bzero(void *s, size_t n);

void bzero_test1() {
  char	control[] = "123456789";
  char	subject[] = "123456789";
  bzero(control, 3);
  ft_bzero(subject, 3);
  printf("Bzero test1: ");
  if (memcmp(subject, control, 10) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

void bzero_test2() {
  char	control[] = "123456789";
  char	subject[] = "123456789";
  bzero(control, 0);
  ft_bzero(subject, 0);
  printf("Bzero test2: ");
  if (memcmp(subject, control, 10) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

int main() {
  bzero_test1();
  bzero_test2();

	return 0;
}
