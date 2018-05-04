# Correction-tools

Check lem_in : (need valgrind, see below if necessary)
--
* cp Correction-tools/lem-in.sh .
* sh lem_in.sh

Check malloc :
--
* cp Correction-tools/mc.py .
* python mc.py ./EXE_FILE [arg]
* cat .sym_logs
* otool -tVj EXE_FILE.infected | grep @malloc -a40

Check leaks :
--
* rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && export PATH=$HOME/.brew/bin:$PATH && brew update && echo "export PATH=$HOME/.brew/bin:$PATH" >> ~/.zshrc
* brew install valgrind
* valgrind  --leak-check=full ./EXE_FILE [arg]

NOT BY ME :
--
* mc.py
* files_push_swap/analyser.sh
* files_push_swap/visu
