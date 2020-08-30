say "你好" using "Mei-Jia" --使用中文语音“美嘉”
say "What do you want me to do ?" using "Samantha"
display dialog "What do you want me to do ?" buttons {"听音乐", "倒垃圾"} default button 2 with title "Empty the Trash" with icon file "Macintosh HD:Users:xingchen:Downloads:File2:Unknown0401.jpg"
set answer to the button returned of the result
if the answer is "听音乐" then
	set filename to (choose file of type {"mp3"} default location file "Macintosh HD:Users:xingchen:Downloads:Musique")
	tell application "Music"
		open filename
	end tell
end if
if the answer is "倒垃圾" then
	tell application "Finder"
		empty the trash
		say "Done" using "Samantha"
	end tell
end if
