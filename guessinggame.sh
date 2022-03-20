
#!/usr/bin/env bash
file_count=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $file_count ]]
	then
		echo "Yeahhhhh!!Your guess is correct"
		echo "  So we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
                echo "    ... and that was it."
	else
		if [[ $guess -gt $file_count ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter :"
guess_filenum
