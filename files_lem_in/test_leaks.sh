echo "\n***** TEST LEAKS *****"
for ((ARG=1; ARG <= 65; ARG+=1))
do
	echo "----- Test $ARG/248 -----"
	valgrind --log-file=".testtesttest" --leak-check=full ./lem-in < Correction-tools/files_lem_in/maps/test$ARG.map >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v " 0 b"
done
for file in _maps/*
do
	echo "----- Test $ARG/248 -----"
	valgrind --log-file=".testtesttest" --leak-check=full ./lem-in < $file >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v " 0 b"
	((ARG++))
done
rm -rf .testtest .testtesttest lem-in.dSYM
