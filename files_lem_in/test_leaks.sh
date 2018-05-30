echo "\n***** TEST LEAKS *****"
((ARG=1))
for file in maps/*
do
	echo "----- Test $ARG/248 -----"
	valgrind --log-file=".testtesttest" ./lem-in < $file >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v " 0 b"
	((ARG++))
done
rm -rf .testtest .testtesttest lem-in.dSYM
