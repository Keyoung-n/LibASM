#include <stdlib.h>
#include <strings.h>
#include <stdio.h>
#include <string.h>

// bzero
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

// memset
void* ft_memset (void * ptr, int value, size_t num);

void memset_test1() {
  char	var[] = "hello world";

  printf("Memset test1: ");
  if (memcmp(memset(var, 3, 0), ft_memset(var, 3, 0), 1) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}
void memset_test2() {
  char	var[] = "hello world";

  printf("Memset test2: ");
	if (memcmp(memset(var, 99, 1),  ft_memset(var, 99, 1), 3) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}
void memset_test3() {
  char	var1[100], var2[100];

  printf("Memset test3: ");
  ft_memset(var1, 42, 100);
  memset(var2, 42, 100);
	if (memcmp(var1, var2, 100) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}
void memset_test4() {
  char	var[] = ":D";

  printf("Memset test4: ");
	var[0] = 1;
	ft_memset(var, 0, 0);
  if (var[0] == 1)
    printf("Pass\n");
  else
    printf("Fail\n");
}

// strlen
size_t ft_strlen ( const char * str );

void strlen_test1() {
  char hello[] = "Hello world!";

  printf("Strlen test1: ");
  if (ft_strlen(hello) == 12)
    printf("Pass\n");
  else
    printf("Fail\n");
}
void strlen_test2() {
  char hello[] = "";

  printf("Strlen test2: ");
  if (ft_strlen(hello) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

// puts
int ft_puts(const char *str);

void puts_test1() {
  printf("Puts test1: ");
  ft_puts("Pass");
}
void puts_test2() {
  char test[] = "testing return...";

  printf("Puts test2: ");
  if (ft_puts(test))
    printf("Pass\n");
  else
    printf("Fail\n");
}

// memcpy
void* memcpy( void* dest, const void* src, std::size_t count );

void memcpy_test1() {
  char test[] = "hello world";
  char copy[] = "xxxxxxxxxxx";

  printf("memcpy test1: ");
  if (1)
    printf("Pass\n");
  else
    printf("Fail\n");
}

int main() {
  bzero_test1();
  bzero_test2();

  memset_test1();
  memset_test2();
  memset_test3();
  memset_test4();

  strlen_test1();
  strlen_test2();

  puts_test1();
  puts_test2();
	return 0;
}
