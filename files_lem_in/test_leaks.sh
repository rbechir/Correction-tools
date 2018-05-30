echo "\n***** TEST LEAKS *****"
((ARG=1))
for file in Correction-tools/files_lem_in/maps/*
do
	echo "\r----- Test $ARG/247 -----\c"
	valgrind --log-file=".testtesttest" ./lem-in < $file >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v " 0 b"
	((ARG++))
done
rm -rf .testtest .testtesttest lem-in.dSYM
