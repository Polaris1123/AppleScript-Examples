tell application "TextEdit"  --打开“文本编辑”
	set texttest to (read file "Macintosh HD:Users:xingchen:Downloads:texttest.txt")  --读取“texttest.txt”文件
        --对话框选择系统语音
	display dialog "Which voice do you prefer?" buttons {"Allison", "Samantha"} default button 2 with title "Read Texttest"
	set answer to the button returned of the result  --按钮返回结果命名为"answer"
	if the answer is "Allison" then
		say texttest using "Allison"
	else
		say texttest using "Samantha"
	end if
end tell
