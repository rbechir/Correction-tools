make
cp Correction-tools/basic_test.sh .
zsh basic_test.sh
rm basic_test.sh
cp Correction-tools/files_lem_in/test_leaks.sh .
zsh test_leaks.sh
rm test_leaks.sh
cp Correction-tools/files_lem_in/tests.sh .
zsh tests.sh
rm tests.sh
cp -r Correction-tools/files_lem_in/_maps .
cp _maps/run.sh .
sh run.sh
rm -rf _maps
rm run.sh
