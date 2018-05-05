echo "\n***** TEST LEAKS *****"
for ((ARG=1; ARG <= 63; ARG+=1))
do
	echo "----- Test $ARG -----"
	valgrind --log-file=".testtesttest" --leak-check=full ./lem-in < Correction-tools/files_lem_in/test$ARG.map >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v "0"
done
rm -rf .testtest .testtesttest lem-in.dSYM
