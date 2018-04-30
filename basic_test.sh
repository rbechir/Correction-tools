ARG=`cat auteur`
echo $ARG
grep "[Bb]y" */*/*.[ch] | grep -v $ARG
grep "[Bb]y" */*.[ch] | grep -v $ARG
grep "[Bb]y" *.[ch] | grep -v $ARG
norminette */*/*.[ch] | grep -v "Norme: "
norminette */*.[ch] | grep -v "Norme: "
norminette *.[ch] | grep -v "Norme: "
grep -we "memset" -e "bzero" -e "memcpy" -e "memccpy" -e "memmove" -e "memchr" -e "memcmp" -e "strlen" -e "strdup" -e "strcpy" -e "strncpy" -e "strcat" -e "strncat" -e "strlcat" -e "strchr" -e "strstr" -e "strnstr" -e "strcmp" -e "strncmp" -e "atoi" -e "isalpha" -e "isdigit" -e "isalnum" -e "isascii" -e "isprint" -e "toupper" -e "tolower" -e "isspace" -e "putchar" -e "putstr" -e "putnbr" -e "perror" -e "sqrt" -e "pow" -e "printf" */*/*.[ch]
grep -we "memset" -e "bzero" -e "memcpy" -e "memccpy" -e "memmove" -e "memchr" -e "memcmp" -e "strlen" -e "strdup" -e "strcpy" -e "strncpy" -e "strcat" -e "strncat" -e "strlcat" -e "strchr" -e "strstr" -e "strnstr" -e "strcmp" -e "strncmp" -e "atoi" -e "isalpha" -e "isdigit" -e "isalnum" -e "isascii" -e "isprint" -e "toupper" -e "tolower" -e "isspace" -e "putchar" -e "putstr" -e "putnbr" -e "perror" -e "sqrt" -e "pow" -e "printf" */*.[ch]
grep -we "memset" -e "bzero" -e "memcpy" -e "memccpy" -e "memmove" -e "memchr" -e "memcmp" -e "strlen" -e "strdup" -e "strcpy" -e "strncpy" -e "strcat" -e "strncat" -e "strlcat" -e "strchr" -e "strstr" -e "strnstr" -e "strcmp" -e "strncmp" -e "atoi" -e "isalpha" -e "isdigit" -e "isalnum" -e "isascii" -e "isprint" -e "toupper" -e "tolower" -e "isspace" -e "putchar" -e "putstr" -e "putnbr" -e "perror" -e "sqrt" -e "pow" -e "printf" *.[ch]
echo "Terminated"
