tell application "Finder"  --使用系统挪威语语音"Nora"阅读txt文件
	set temp to display dialog "Please input phrases or words." default answer "" buttons {"Choose", "Read"} default button 2 with title "Norwegian Helper"
	set textanswer to the text returned of the temp  --对话框返回的文本设为"textanswer"
	set buttonanswer to the button returned of the temp  --对话框返回的按钮设为"buttonanswer"
	if the buttonanswer is "Choose" then
                --打开路径下默认文件“NorwegianTextTestToRead.txt”
		set filechoosed to (choose file of type {"txt"} default location file "Macintosh HD:Users:xingchen:Downloads:NorwegianTextTestToRead.txt")
		set filetext to (read file filechoosed)
		say filetext using "Nora"
	else
		say textanswer using "Nora"
	end if
end tell
