tell application "TextEdit"
	display dialog "Do you want to choose a file or read a file?" buttons {"Choose", "Read"} default button 2 with title "Read Texttest"
	set option to the button returned of the result
	if the option is "Choose" then
		choose file of type {"txt"} default location file "Macintosh HD:Users:xingchen:Downloads"
		set filechoosed to the result
		set texttest to read file filechoosed
		display dialog "Which voice do you prefer?" buttons {"Allison", "Samantha"} default button 2 with title "Read Texttest"
		set answer to the button returned of the result
		if the answer is "Allison" then
			say texttest using "Allison"
		else
			say texttest using "Samantha"
		end if
	else
		set texttest to (read file "Macintosh HD:Users:xingchen:Downloads:TextToRead.txt")
		display dialog "Which voice do you prefer?" buttons {"Allison", "Samantha"} default button 2 with title "Read Texttest"
		set answer to the button returned of the result
		if the answer is "Allison" then
			say texttest using "Allison"
		else
			say texttest using "Samantha"
		end if
	end if
end tell
