echo "\n***** TESTS *****"
for ((ARG=1; ARG <= 65; ARG+=1))
do
	echo "----- Test $ARG -----"
	echo "\n----- Test $ARG -----" >> trace
	cat Correction-tools/files_lem_in/maps/test$ARG.map >> trace
	echo "Result =>" >> trace
	./lem-in < Correction-tools/files_lem_in/maps/test$ARG.map >> trace 2>&1
done
echo "\nTest multipath basique : (30/31/39/40)"
./lem-in < Correction-tools/files_lem_in/test_sujet3.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_sujet4.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_sujet21.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_sujet22.map | wc -l
echo "\nTest multipath avancé : (32/32/51/52)"
./lem-in < Correction-tools/files_lem_in/test_real_multi3.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_real_multi4.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_real_multi42.map | wc -l
./lem-in < Correction-tools/files_lem_in/test_real_multi43.map | wc -l
