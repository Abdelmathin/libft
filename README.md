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
     The ft_bzero() function used to allocate and initialize a block of memory for an array of elements.

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
     ....

## ft_isprint
```c
                    int ft_isprint(int c);
```
     ....

## ft_itoa
```c
                    char *ft_itoa(int n);
```
     ....

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

## ft_memchr
```c
                    void *ft_memchr(const void *s, int c, size_t n);
```
     ....

## ft_memcmp
```c
                    int ft_memcmp(const void *s1, const void *s2, size_t n);
```
     ....

## ft_memcpy
```c
                    void *ft_memcpy(void *dst, const void *src, size_t n);
```
     ....

## ft_memmove
```c
                    void *ft_memmove(void *s1, const void *s2, size_t n);
```
     ....

## ft_memset
```c
                    void *ft_memset(void *b, int c, size_t len);
```
     ....

## ft_putchar_fd
```c
                    void ft_putchar_fd(char c, int fd);
```
     ....

## ft_putendl_fd
```c
                    void ft_putendl_fd(const char *s, int fd);
```
     ....

## ft_putnbr_fd
```c
                    void ft_putnbr_fd(int n, int fd);
```
     ....

## ft_putstr_fd
```c
                    void ft_putstr_fd(const char *s, int fd);
```
     ....

## ft_split
```c
                    static int my_spliter(char **ret, char const *s, char c);
```
     ....

## ft_strchr
```c
                    char *ft_strchr(const char *s, int c);
```
     ....

## ft_strdup
```c
                    char *ft_strdup(const char *s1);
```
     ....

## ft_striteri
```c
                    void ft_striteri(char *s, void (*f)(unsigned int, char*));
```
     ....

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
     ....

## ft_strlcpy
```c
                    size_t ft_strlcpy(char *dst, const char *src, size_t dstsize);
```
     ....

## ft_strlen
```c
                    size_t ft_strlen(const char *s);
```
     ....

## ft_strmapi
```c
                    char *ft_strmapi(char const *s, char (*f)(unsigned int, char));
```
     ....

## ft_strncmp
```c
                    int ft_strncmp(const char *s1, const char *s2, size_t n);
```
     ....

## ft_strnstr
```c
                    char *ft_strnstr(const char *haystack, const char *needle, size_t len);
```
     ....

## ft_strrchr
```c
                    char *ft_strrchr(const char *s, int c);
```
     ....

## ft_strtrim
```c
                    char *ft_strtrim(char const *s1, char const *set);
```
     ....

## ft_substr
```c
                    char *ft_substr(char const *s, unsigned int start, size_t len);
```
     ....

## ft_tolower
```c
                    int ft_tolower(int c);
```
     ....

## ft_toupper
```c
                    int ft_toupper(int c);
```
     ....
