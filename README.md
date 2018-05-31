# Correction-tools

### Check push_swap : (need valgrind)
* cp Correction-tools/push_swap.sh .
* sh push_swap.sh

### Check lem_in : (need valgrind)
* cp Correction-tools/lem_in.sh .
* sh lem_in.sh

### Check malloc :
* cp Correction-tools/mc.py .
* python mc.py ./EXE_FILE [arg]
* cat .sym_logs
* otool -tVj EXE_FILE.infected | grep @malloc -a40

### Check leaks :
* valgrind  --leak-check=full ./EXE_FILE [arg]

### NOT BY ME :
* mc.py
* files_push_swap/analyser.sh
* files_push_swap/visu
* install_valgrind.sh
