echo "\n***** TESTS *****"
for ((ARG=1; ARG <= 65; ARG+=1))
do
	echo "----- Test $ARG -----"
	echo "\n----- Test $ARG -----" >> trace
	cat Correction-tools/files_lem_in/test$ARG.map >> trace
	echo "Result =>" >> trace
	./lem-in < Correction-tools/files_lem_in/test$ARG.map >> trace 2>&1
done
echo "\nTest multipath basique : "
./lem-in < Correction-tools/files_lem_in/test_sujet3.map | wc -l
echo "\nTest multipath avancé : "
./lem-in < Correction-tools/files_lem_in/test_real_multi.map | wc -l
