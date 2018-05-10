echo "\n***** TEST LEAKS *****"
echo "----- Test checker 1 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 2/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker df fr >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 3 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker 0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 3.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker 0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 4/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 0 0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 5 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker +0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 5.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker +0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 6 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -00 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 6.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -00 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 7/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 2147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 8 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker 2147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 8.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker 2147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 9 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -2147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 9.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -2147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 10/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker -2147483649 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 11 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker +002147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 11.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker +002147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 12 -----"
echo "pa" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -002147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 12.1/ -----"
echo "" | valgrind --log-file=".testtesttest" --leak-check=full ./checker -002147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 13/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 2147483648000000000000000000000000000000000000000000000000000000000000 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 14/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 0 2 2 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 15/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 0 0 2 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 16/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker fg >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test checker 17/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 2-3 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 1 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 2/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap df fr >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 3 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 4/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 0 0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 5 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap +0 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 6 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap -00 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 7/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 2147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 8 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 2147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 9 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap -2147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 10/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap -2147483649 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 11 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap +002147483647 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 12 -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap -002147483648 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 13/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 2147483648000000000000000000000000000000000000000000000000000000000000 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 14/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 0 2 2 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 15/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap 0 0 2 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
echo "----- Test push_swap 16/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./push_swap fg >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
rm -rf .testtest .testtesttest checker.dSYM push_swap.dSYM
echo "----- Test push_swap 17/ -----"
valgrind --log-file=".testtesttest" --leak-check=full ./checker 2-3 >> .testtest
grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
