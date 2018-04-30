	#!/bin/bash
	rm -rf validity.txt
	list_file=`find ./valid_map/ -type f -name "valid*"`
	echo "\n\033[0;35mBegin of checking validity\033[0m\n\n"
	for file in $list_file
	do
		rm -rf ant
		sed -e '1,2d' $file > act
		../lem-in < act | grep '^L' > ant;
		./validity $file < $file
	done
	rm -rf act
	rm -rf ant
	echo "\nThanks for using that script, good luck ;)"
