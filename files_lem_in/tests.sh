echo "\n***** TESTS *****"
for ((ARG=1; ARG <= 65; ARG+=1))
do
	echo "\n----- Test $ARG -----"
	cat Correction-tools/files_lem_in/test$ARG.map
	echo "Result =>"
	./lem-in < Correction-tools/files_lem_in/test$ARG.map
done
