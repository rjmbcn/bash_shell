README.md:
	touch README.md

README.md: guessinggame.sh
	echo "# The Unix workbench final project" > README.md
	echo "Date and time make was run:" >> README.md 
	date -u >> README.md
	echo "" >> README.md 
	echo "Number of lines in guessinggame: " >> README.md
	cat guessinggame.sh | wc -l >> README.md 
	cat README.md

clean: README.md
	rm README.md
