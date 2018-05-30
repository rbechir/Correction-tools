if [ -e trace ]
then
	rm trace
fi
echo "\n***** TESTS *****"
((ARG=1))
for file in Correction-tools/files_lem_in/maps/*
do
	echo "----- Test $ARG/248 -----"
	echo "\n----- Test $ARG/248 -----" >> trace
	cat $file >> trace
	echo "** Result **" >> trace
	./lem-in < $file >> trace 2>&1
	((ARG++))
done
echo "\nTest multipath basique : (30/31/39/40)"
./lem-in < Correction-tools/files_lem_in/maps_multi/test_sujet3.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_sujet4.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_sujet21.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_sujet22.map | wc -l
echo "\nTest multipath avancé : (32/32/51/52)"
./lem-in < Correction-tools/files_lem_in/maps_multi/test_real_multi3.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_real_multi4.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_real_multi42.map | wc -l
./lem-in < Correction-tools/files_lem_in/maps_multi/test_real_multi43.map | wc -l
