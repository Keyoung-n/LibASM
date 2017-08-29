#include <stdlib.h>
#include <strings.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int _ft_isalnum(int c);
int _ft_isascii(int c);
int _ft_isdigit(int c);
int _ft_isprint(int c);
int _ft_puts(const char *str);
int _ft_tolower(int c);
int _ft_toupper(int c);
size_t _ft_strlen(const char * str);
void _ft_bzero(void *s, size_t n);
void* _ft_memcpy(void *dest, const void *src, size_t n);
void* _ft_memset(void * ptr, int value, size_t num);

// bzero

void bzero_test1() {
  char	control[] = "123456789";
  char	subject[] = "123456789";
  bzero(control, 3);
  _ft_bzero(subject, 3);
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
  _ft_bzero(subject, 0);
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
  if (memcmp(memset(var, 3, 0), _ft_memset(var, 3, 0), 3) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

void memset_test2() {
  char	var[] = "hello world";

  printf("Memset test2: ");
	if (memcmp(memset(var, 99, 1),  _ft_memset(var, 99, 1), 3) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

void memset_test3() {
  char	var1[100], var2[100];

  printf("Memset test3: ");
  _ft_memset(var1, 42, 100);
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
	_ft_memset(var, 0, 0);
  if (var[0] == 1)
    printf("Pass\n");
  else
    printf("Fail\n");
}

// strlen

void strlen_test1() {
  char hello[] = "Hello world!";

  printf("Strlen test1: ");
  if (_ft_strlen(hello) == 12)
    printf("Pass\n");
  else
    printf("Fail\n");
}

void strlen_test2() {
  char hello[] = "";

  printf("Strlen test2: ");
  if (_ft_strlen(hello) == 0)
    printf("Pass\n");
  else
    printf("Fail\n");
}

// puts

void puts_test1() {
  puts("Puts test1: ");
  _ft_puts("Pass");
}
void puts_test2() {
  char test[] = "testing return...";

  puts("Puts test1: ");
  if (_ft_puts(test))
    puts("Pass");
  else
    puts("Fail\n");
}

// isprint

void isprint_test1()
{
    if (_ft_isprint(200) == 1)
        printf("isprint test1 failed\n");
    else if (_ft_isprint(200) == 0)
        printf("isprint test1 passed\n");
}

void isprint_test2()
{
    if (_ft_isprint(65) == 1)
        printf("isprint test1 passed\n");
    else if (_ft_isprint(65) == 0)
        printf("isprint test1 failed\n");
}

// isalnum

void isalnum_test1()
{
    if (_ft_isalnum(65))
        printf("isalnum test1 passed\n");
    else
        printf("isalnum test1 failed\n");
}

void isalnum_test2()
{
    if (_ft_isalnum(48))
        printf("isalnum test2 passed\n");
    else
        printf("isalnum test2 failed\n");
}

void isalnum_test3()
{
    if (_ft_isalnum(8) == 0)
        printf("isalnum test3 passed\n");
    else
        printf("isalnum test3 failed\n");
}

// isdigit

void   isdigit_test1()
{
    if (_ft_isdigit('1'))
        printf("isdigit test1 passed\n");
    else
        printf("isdigit test1 failed\n");
}

void   isdigit_test2()
{
    if (_ft_isdigit('A') == 0)
        printf("isdigit test2 passed\n");
    else
        printf("isdigit test2 failed\n");
}

// isascii

void isascii_test1()
{
    if (_ft_isascii('A'))
        printf("isascii test1 passed\n");
    else
        printf("isascii test1 failed\n");
}

void isascii_test2()
{
    if (_ft_isascii(1))
        printf("isascii test2 passed\n");
    else
        printf("isascii test2 failed\n");
}

void isascii_test3()
{
    if (_ft_isascii(200) == 0)
        printf("isascii test3 passed\n");
    else
        printf("isascii test3 failed\n");
}

// toupper

void toupper_test1() {
  char a = 'a';

  printf("toupper test1: ");
  if (_ft_toupper(a) == 'A')
      printf("passed\n");
  else
      printf("failed\n");
}

void toupper_test2() {
  char b = 'b';

  printf("toupper test2: ");
  if (_ft_toupper(b) == toupper(b))
      printf("passed\n");
  else
      printf("failed\n");
}

void toupper_test3() {
  int test = 0;

  printf("toupper test3: ");
  if (_ft_toupper(test) == toupper(test))
      printf("passed\n");
  else
      printf("failed\n");
}

// tolower

void tolower_test1() {
  char a = 'A';

  printf("tolower test1: ");
  if (_ft_tolower(a) == 'a')
      printf("passed\n");
  else
      printf("failed\n");
}

void tolower_test2() {
  char b = 'B';

  printf("tolower test2: ");
  if (_ft_tolower(b) == tolower(b))
      printf("passed\n");
  else
      printf("failed\n");
}

void tolower_test3() {
  int test = 0;

  printf("tolower test3: ");
  if (_ft_tolower(test) == tolower(test))
      printf("passed\n");
  else
      printf("failed\n");
}

// memcpy
void memcpy_test1() {
  char str1[] = "hello world";
  char str2[] = "xxxxxxxxxxx";

  printf("memcpy test1: ");
  _ft_memcpy(str2, str1, 11);
  if(memcmp(str1, str2, 11) == 0)
    printf("passed\n");
  else
    printf("failed\n");
}

void memcpy_test2() {
  char str1[] = "hello world";
  char str2[] = "xxxxxxxxxxx";

  printf("memcpy test2: ");
  _ft_memcpy(str2, str1, 5);
  if(memcmp(str1, str2, 5) == 0)
    printf("passed\n");
  else
    printf("failed\n");
}

void memcpy_test3() {
  int num1 = 100;
  int num2 = 300;

  printf("memcpy test3: ");
  _ft_memcpy(&num2, &num1, 3);
  if(memcmp(&num1, &num2, 3) == 0)
    printf("passed\n");
  else
    printf("failed\n");
}

void memcpy_test4() {
  char str1[] = "hello world";
  char str2[] = "xxxxxxxxxxx";
  void *ret1  = _ft_memcpy(str2, str1, 11);
  void *ret2  = memcpy(str2, str1, 11);
  printf("memcpy test4: ");
  if(memcmp(ret1, ret2, 11) == 0)
    printf("passed\n");
  else
    printf("failed\n");
}

void memcpy_test5() {
  char str1[] = "hello world";
  char str2[] = "xxxxxxxxxxx";
  void *ret1  = _ft_memcpy(str2, str1, 0);
  void *ret2  = memcpy(str2, str1, 0);

  printf("memcpy test5: ");
  if(memcmp(ret1, ret2, 11) == 0)
    printf("passed\n");
  else
    printf("failed\n");
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