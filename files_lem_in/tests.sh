echo "\n***** TESTS *****"
for ((ARG=1; ARG <= 65; ARG+=1))
do
	echo "\n----- Test $ARG -----" >> trace
	cat Correction-tools/files_lem_in/test$ARG.map >> trace
	echo "Result =>" >> trace
	./lem-in < Correction-tools/files_lem_in/test$ARG.map >> trace 2>&1
done
