#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Title of the project: __Peer-graded Assignment: Bash, Make, Git, and GitHub__" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
