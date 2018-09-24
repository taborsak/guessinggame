README.md: guessinggame.sh
	touch README.md
	echo "### Peer review exercise in The Unix Workbench course:" > README.md
	echo "# Guessing game by Fanny Taborsak-Lines" >> README.md
	echo "Make was run:" >> README.md
	date >> README.md
	echo " " >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

	
	


