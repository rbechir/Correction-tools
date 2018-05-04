cp Correction-tools/basic_test.sh .
zsh basic_test.sh
rm basic_test.sh
cp Correction-tools/files_lem_in/test_leaks.sh .
echo "\n***** TEST LEAKS *****"
zsh test_leaks.sh
rm test_leaks.sh
