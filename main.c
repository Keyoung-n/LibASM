#include <stdlib.h>
#include <strings.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>

int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isdigit(int c);
char * ft_strdup(char *str);
void ft_cat(int fd);

int		ft_strcmp(const char *s1, const char *s2)
{
	while (*s1 && *s2 && *s1 == *s2)
	{
		s1++;
		s2++;
	}
	return ((unsigned char)*s1 - (unsigned char)*s2);
}

// bzero

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

void puts_test1() {
  puts("Puts test1...");
  ft_puts("Pass");
}

void puts_test2() {
  char test[] = "testing return...";

  puts("Puts test2...");
  if (ft_puts(test))
    puts("Pass");
  else
    puts("Fail\n");
}

// is print

void isprint_test1()
{
    if (ft_isprint(200) == 1)
        printf("isprint test1 failed\n");
    else if (ft_isprint(200) == 0)
        printf("isprint test1 passed\n");
}

void isprint_test2()
{
    if (ft_isprint(65) == 1)
        printf("isprint test1 passed\n");
    else if (ft_isprint(65) == 0)
        printf("isprint test1 failed\n");
}

// isalnum

void isalnum_test1()
{
    if (ft_isalnum(65))
        printf("isalnum test1 passed\n");
    else
        printf("isalnum test1 failed\n");
}

void isalnum_test2()
{
    if (ft_isalnum(48))
        printf("isalnum test2 passed\n");
    else
        printf("isalnum test2 failed\n");
}

void isalnum_test3()
{
    if (ft_isalnum(8) == 0)
        printf("isalnum test3 passed\n");
    else
        printf("isalnum test3 failed\n");
}

// isdigit

void   isdigit_test1()
{
    if (ft_isdigit('1'))
        printf("isdigit test1 passed\n");
    else
        printf("isdigit test1 failed\n");
}

void   isdigit_test2()
{
    if (ft_isdigit('A') == 0)
        printf("isdigit test2 passed\n");
    else
        printf("isdigit test2 failed\n");
}

void isascii_test1()
{
    if (ft_isascii('A'))
        printf("isascii test1 passed\n");
    else
        printf("isascii test1 failed\n");
}

void isascii_test2()
{
    if (ft_isascii(1))
        printf("isascii test2 passed\n");
    else
        printf("isascii test2 failed\n");
}

void isascii_test3()
{
    if (ft_isascii(200) == 0)
        printf("isascii test3 passed\n");
    else
        printf("isascii test3 failed\n");
}


void strdup_test()
{
    char *test = (char *)malloc(3);
    test[0] = 'h';
    test[1] = 'i';
    test[2]= '\0';

    char *ret;

    printf("calling str dup\n");
    ret = ft_strdup(test);
    printf("str dup return");

    if (ft_strcmp(ret, test) == 0)
        printf("strdup test1 passed\n");
    else
        printf("strdup test1 failed. ret = %s\n", ret);
}

void cat_test()
{
	int fd = open("main.c",  O_RDWR);

	ft_cat(fd);
	printf ("if you see main.c avove this then it works\n");
}

int main() {
	  cat_test();
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

  isprint_test1();
  isprint_test2();

  isalnum_test1();
  isalnum_test2();
  isalnum_test3();

  isdigit_test1();
  isdigit_test2();

  isascii_test1();
  isascii_test2();
  isascii_test2();


  toupper_test1();
  toupper_test2();
  toupper_test3();

  tolower_test1();
  tolower_test2();
  tolower_test3();

  memcpy_test1();
  memcpy_test2();
  memcpy_test3();
  memcpy_test4();
  memcpy_test5();

	return 0;
}
