ARG=`cat auteur`
echo "\nLogin : $ARG"
echo "\n----- Verification headers -----"
grep -e "By:" -e "by " **/*.[ch] | grep -v $ARG
echo "\n----- Verification fonctions interdites -----"
grep -we "memset" -e "bzero" -e "memcpy" -e "memccpy" -e "memmove" -e "memchr" -e "memcmp" -e "strlen" -e "strdup" -e "strcpy" -e "strncpy" -e "strcat" -e "strncat" -e "strlcat" -e "strchr" -e "strstr" -e "strnstr" -e "strcmp" -e "strncmp" -e "atoi" -e "isalpha" -e "isdigit" -e "isalnum" -e "isascii" -e "isprint" -e "toupper" -e "tolower" -e "isspace" -e "putchar" -e "putstr" -e "putnbr" -e "perror" -e "exit" -e "sqrt" -e "pow" -e "printf" **/*.[ch]
echo "\n----- Verification norme -----"
norminette **/*.[ch] | grep -v "Norme: "
