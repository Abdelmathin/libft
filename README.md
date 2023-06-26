# 42cursus-libft
This project is your very first project as a student at 42. You will need to recode a few functions of the C standard library as well as some other utility functions that you will use during your whole cursus.

## ft_atoi
```c
int ft_atoi(const char *str);
```
    The ft_atoi() function converts the initial portion of the string pointed to by str to
    int representation.

## ft_bzero
```c
void ft_bzero(void *s, size_t n);
```
    The ft_bzero() function writes n zeroed bytes to the string s. 

    If n is zero, ft_bzero() does nothing.

## ft_calloc
```c
void *ft_calloc(size_t count, size_t size);
```
    The ft_bzero() function used to allocate and initialize a block of memory for an array of
    elements.

## ft_isalnum
```c
int ft_isalnum(int c);
```
    The ft_isalnum() function used to determine whether a given character is alphanumeric.

## ft_isalpha
```c
int ft_isalpha(int c);
```
    The ft_isalpha() function used to determine whether a given character is an alphabetic letter.

## ft_isascii
```c
int ft_isascii(int c);
```
    The ft_isascii() function used to determine whether a given character is a 7-bit ASCII character.

## ft_isdigit
```c
int ft_isdigit(int c);
```
    The ft_isdigit() function tests for a decimal digit character.  Regardless of locale,
    this includes the following characters only

            ``0''         ``1''         ``2''         ``3''         ``4''
            ``5''         ``6''         ``7''         ``8''         ``9''

## ft_isprint
```c
int ft_isprint(int c)
{
    return (32 <= c && c <= 126);
}
```
    The ft_isprint() function tests for any printing character, including space (` ').
    The value of the argument must be representable as an unsigned char or the value of EOF.

    In the ASCII character set, this includes the following characters
    (preceded by their numeric values, in octal):

    040 space     041 ``!''     042 ``"''     043 ``#''     044 ``$''
    045 ``%''     046 ``&''     047 ``'''     050 ``(''     051 ``)''
    052 ``*''     053 ``+''     054 ``,''     055 ``-''     056 ``.''
    057 ``/''     060 ``0''     061 ``1''     062 ``2''     063 ``3''
    064 ``4''     065 ``5''     066 ``6''     067 ``7''     070 ``8''
    071 ``9''     072 ``:''     073 ``;''     074 ``<''     075 ``=''
    076 ``>''     077 ``?''     100 ``@''     101 ``A''     102 ``B''
    103 ``C''     104 ``D''     105 ``E''     106 ``F''     107 ``G''
    110 ``H''     111 ``I''     112 ``J''     113 ``K''     114 ``L''
    115 ``M''     116 ``N''     117 ``O''     120 ``P''     121 ``Q''
    122 ``R''     123 ``S''     124 ``T''     125 ``U''     126 ``V''
    127 ``W''     130 ``X''     131 ``Y''     132 ``Z''     133 ``[''
    134 ``\''     135 ``]''     136 ``^''     137 ``_''     140 ```''
    141 ``a''     142 ``b''     143 ``c''     144 ``d''     145 ``e''
    146 ``f''     147 ``g''     150 ``h''     151 ``i''     152 ``j''
    153 ``k''     154 ``l''     155 ``m''     156 ``n''     157 ``o''
    160 ``p''     161 ``q''     162 ``r''     163 ``s''     164 ``t''
    165 ``u''     166 ``v''     167 ``w''     170 ``x''     171 ``y''
    172 ``z''     173 ``{''     174 ``|''     175 ``}''     176 ``~''

## ft_itoa
```c
char *ft_itoa(int n);
```
    The function ft_itoa takes an integer n as its argument and returns a pointer to a dynamically
    allocated character array containing the string representation of the integer.

## ft_memchr
```c
void *ft_memchr(const void *s, int c, size_t n);
```
    The ft_memchr() function locates the first occurrence of c (converted to an unsigned char)
    in string s.

    The `s` argument is a pointer to the block of memory in which you want to search
    for the byte value.

    The `c` argument is the specific byte value you want to find.

    The `n` argument specifies the number of bytes to search.

    The return value of ft_memchr is a void pointer to the first occurrence of the byte value
    within the specified block of memory, or NULL if the byte value is not found.

## ft_memcmp
```c
int ft_memcmp(const void *s1, const void *s2, size_t n);
```
    The ft_memcmp() function compares byte string s1 against byte string s2.

    Both strings are assumed to be n bytes long.

## ft_memcpy
```c
void *ft_memcpy(void *dst, const void *src, size_t n);
```
    The ft_memcpy() function copies n bytes from memory area `src` to memory area `dst`.

    If `dst` and `src` overlap, behavior is undefined.

    Applications in which dst and src might overlap should use ft_memmove instead.

## ft_memmove
```c
void *ft_memmove(void *s1, const void *s2, size_t n);
```
    The ft_memmove() function copies len bytes from string src to string dst.
    The two strings may overlap; the copy is always done in a non-destructive manner.

## ft_memset
```c
void *ft_memset(void *b, int c, size_t len);
```
    The ft_memset() function writes len bytes of value c (converted to an unsigned char)
    to the string b.

## ft_putchar_fd
```c
void ft_putchar_fd(char c, int fd);
```
    The ft_putchar_fd function takes two arguments: the character c to be written and the file
    descriptor fd to which the character will be written.
    It uses the write system call from the <unistd.h> header to perform the actual
    write operation.

    The write function takes the file descriptor, a pointer to the data to be written
    (&c in this case), and the number of bytes to write
    (1 in this case, since we are writing a single character).

## ft_putendl_fd
```c
void ft_putendl_fd(const char *s, int fd);
```
    The ft_putendl_fd function takes two arguments: the pointer to the null-terminated string s
    to be written and the file descriptor fd to which the string will be written.

    It uses the write system call from the <unistd.h> header to perform the actual write
    operation.

## ft_putnbr_fd
```c
void ft_putnbr_fd(int n, int fd);
```
    The ft_putnbr_fd function takes two arguments: the integer n to be written and the file
    descriptor fd to which the integer will be written.

    It recursively writes each digit of the integer as a character by dividing the number by 10
    and converting the remainder to a character.

    It handles negative numbers by writing a '-' character and then processing the absolute value
    of the number.

## ft_putstr_fd
```c
void ft_putstr_fd(const char *s, int fd);
```
    The ft_putstr_fd function takes two arguments: the pointer to the null-terminated string s
    to be written and the file descriptor fd to which the string will be written.

    It iterates over each character of the string and uses the `write` function to write each
    character to the specified file descriptor.

## ft_split
```c
char **ft_split(char const *s, char c);
```
    The ft_split function takes two arguments: the string s to be split and
    the delimiter character c.

    It first counts the number of words in the string by iterating over it and detecting
    transitions from delimiter characters to non-delimiter characters.

    Then, it allocates memory for an array of strings (char **) to store the resulting substrings.

## ft_strchr
```c
char *ft_strchr(const char *s, int c);
```
    The ft_strchr function takes two arguments: the pointer to the string s to be searched
    and the integer c representing the character to search for.

    It iterates over the string character by character until it finds a match with the specified
    character or reaches the end of the string.

    If a match is found, it returns a pointer to the character. If the character is not found,
    it returns NULL.

## ft_strdup
```c
char *ft_strdup(const char *s1);
```
    The ft_strdup function takes a single argument: the pointer to the string s1 to be duplicated.

    It determines the length of the string using ft_strlen and adds 1 to account for the null
    terminator.

    It then allocates memory for the duplicate string using ft_calloc.

    If the memory allocation is successful, it uses ft_memmove to copy the contents of s1 into
    the newly allocated memory.

    Finally, it returns a pointer to the duplicate string.

## ft_striteri
```c
void ft_striteri(char *s, void (*f)(unsigned int, char*));
```
    The ft_striteri function applies the function ’f’ on each character of the string passed as
    argument, passing its index as first argument.

    Each character is passed by address to ’f’ to be modified if necessary.

## ft_strjoin
```c
char *ft_strjoin(char const *s1, char const *s2);
```
    The purpose of the "ft_strjoin" function is to concatenate or join two strings together into
    a single string.

    It takes two input strings as arguments and returns a new string that contains the
    combined contents of both input strings.

## ft_strlcat
```c
size_t ft_strlcat(char *dst, const char *src, size_t dstsize);
```
    The ft_strlcat function takes three arguments: the pointer to the destination buffer dst,
    the pointer to the source string src, and the size of the destination buffer dstsize.

    It determines the lengths of the destination and source strings using strlen.

    It then calculates the total length if both strings were concatenated.

    The function checks if the length of the destination string (dst_len) is greater than or
    equal to the dstsize.

    If so, it returns dstsize + src_len to indicate that the entire source string could not
    be appended.

    If the total length is greater than dstsize, it means the destination buffer is not large
    enough to hold the complete concatenated string.

    In this case, it calculates the number of characters that can be safely copied (copy_len)
    and copies that many characters from src to dst, ensuring that the destination string
    is null-terminated.

    If the total length is within the dstsize limit, it means the destination buffer has enough
    space to hold the complete concatenated string. In this case, it copies the entire src string
    to the end of dst and adds a null terminator.

    The function returns the total length of the concatenated string, which would have been
    produced if the destination buffer were large enough to accommodate the entire source string.

## ft_strlcpy
```c
size_t ft_strlcpy(char *dst, const char *src, size_t dstsize);
```
    The ft_strlcpy function takes three arguments: the pointer to the destination buffer dst,
    the pointer to the source string src, and the size of the destination buffer dstsize.

    If dstsize is greater than 0, it checks if the source string length exceeds the destination
    buffer size.

    If it does, the copy length is adjusted to dstsize - 1 to leave room for the null terminator.
    It copies characters from src to dst, and adds a null terminator at the appropriate position in dst.

## ft_strlen
```c
size_t ft_strlen(const char *s);
```
    The ft_strlen() function computes the length of the string s.

    This function takes a pointer to a null-terminated string as its argument and returns
    the number of characters in that string, excluding the null character ('\0') at the end.

    The function scans the string character by character until it reaches the null character
    and then returns the count.

## ft_strmapi
```c
char *ft_strmapi(char const *s, char (*f)(unsigned int, char));
```
    The ft_strmapi() function applies the function ’f’ to each character of the string ’s’, and
    passing its index as first argument to create a new string (with malloc(3)) resulting from
    successive applications of ’f’.

## ft_strncmp
```c
int ft_strncmp(const char *s1, const char *s2, size_t n);
```
    The ft_strncmp() function compares not more than n characters.

    Because ft_strncmp() is designed for comparing strings rather than binary data,
    characters that appear after a `\0' character are not compared.

    The function ft_strncmp takes three arguments: two pointers to null-terminated strings
    and an integer n that specifies the maximum number of characters to compare.

## ft_strnstr
```c
char *ft_strnstr(const char *haystack, const char *needle, size_t len);
```
    The ft_strnstr() function locates the first occurrence of the null-terminated string `needle`
    in the null-terminatedstring `haystack`.

    The `haystack` argument is a pointer to the null-terminated string in which you want to search
    for the substring.

    The `needle` argument is a pointer to the null-terminated substring you want to find.

    The `len` (haystack_len) argument specifies the maximum length within which to search for
    the substring.

    The return value of ft_strnstr is a pointer to the first occurrence of the substring within
    the specified length of the string, or NULL if the substring is not found.

## ft_strrchr
```c
char *ft_strrchr(const char *s, int c);
```
    The ft_strrchr() function locates the last occurrence of c (converted to a char) in the string
    pointed to by s. 

    The terminating null character is considered to be part of the string; therefore if c is `\0',
    the functions locate the terminating `\0'.

    The `s` argument is a pointer to the null-terminated string in which you want to search for
    the character.

    The `c` argument is the specific character you want to find.

    The return value of ft_strrchr is a pointer to the last occurrence of the specified character
    within the string, or NULL if the character is not found.

## ft_strtrim
```c
char *ft_strtrim(char const *s1, char const *set);
```
    The ft_strtrim() function allocates (with malloc(3)) and returns a copy of ’s1’ with the
    characters specified in ’set’ removed from the beginning and the end of the string.

## ft_substr
```c
char *ft_substr(char const *s, unsigned int start, size_t len);
```
    The ft_substr() function allocates (with malloc(3)) and returns a substring from the string ’s’.
    The substring begins at index ’start’ and is of maximum size ’len’.

    The ft_substr function takes three arguments: the pointer to the string s from which
    the substring should be extracted, the starting index start indicating the position in s
    to begin the substring, and the length len of the substring to extract.

## ft_tolower
```c
int ft_tolower(int c);
```
    The ft_tolower() function converts an upper-case letter to the corresponding lower-case letter.
    The argument must be representable as an unsigned char or the value of EOF.

## ft_toupper
```c
int ft_toupper(int c);
```
    The toupper() function converts a lower-case letter to the corresponding upper-case letter.
    The argument must be representable as an unsigned char or the value of EOF.

## ft_lstadd_back_bonus
```c
void ft_lstadd_back(t_list **lst, t_list *new);
```
     ....

## ft_lstadd_front_bonus
```c
void ft_lstadd_front(t_list **lst, t_list *new);
```
     ....

## ft_lstclear_bonus
```c
void ft_lstclear(t_list **lst, void (*del)(void*));
```
     ....

## ft_lstdelone_bonus
```c
void ft_lstdelone(t_list *lst, void (*del)(void*));
```
     ....

## ft_lstiter_bonus
```c
void ft_lstiter(t_list *lst, void (*f)(void *));
```
     ....

## ft_lstlast_bonus
```c
t_list *ft_lstlast(t_list *lst);
```
     ....

## ft_lstmap_bonus
```c
t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
```
     ....

## ft_lstnew_bonus
```c
t_list *ft_lstnew(void *content);
```
     ....

## ft_lstsize_bonus
```c
int ft_lstsize(t_list *lst);
```
     ....
