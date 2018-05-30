ARG = 66
for file in _maps/*
do
	echo "----- Test $ARG -----"
	valgrind --log-file=".testtesttest" --leakcheck=full ./lem-in < $file >> .testtest
	grep -e "definitely lost: " -e "indirectly lost: " ".testtesttest" | grep -v " 0 b"
	$ARG+=1
done
rm -rf .testtest .testtesttest lem-in.dSYM
