
	 $$$$$$\                  $$\ $$\                 $$\      $$\                                         
	$$  __$$\                 $$ |\__|                $$$\    $$$ |                                        
	$$ /  $$ |$$\   $$\  $$$$$$$ |$$\  $$$$$$\        $$$$\  $$$$ | $$$$$$\   $$$$$$$\  $$$$$$\   $$$$$$\  
	$$$$$$$$ |$$ |  $$ |$$  __$$ |$$ |$$  __$$\       $$\$$\$$ $$ | \____$$\ $$  _____|$$  __$$\ $$  __$$\ 
	$$  __$$ |$$ |  $$ |$$ /  $$ |$$ |$$ /  $$ |      $$ \$$$  $$ | $$$$$$$ |$$ /      $$ |  \__|$$ /  $$ |
	$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |      $$ |\$  /$$ |$$  __$$ |$$ |      $$ |      $$ |  $$ |
	$$ |  $$ |\$$$$$$  |\$$$$$$$ |$$ |\$$$$$$  |      $$ | \_/ $$ |\$$$$$$$ |\$$$$$$$\ $$ |      \$$$$$$  |
	\__|  \__| \______/  \_______|\__| \______/       \__|     \__| \_______| \_______|\__|       \______/ 
																										   													
# Audio Macro - Created by Wowkster
Audio Macro is a simple macro script that will play a sound with a specified key bind. It uses AutoHotKey Script to handle keyboard events, and VBS to copy into the start folder automatically.

## Configuration

1. Download and unzip the `Audio Macro - X.X.X.zip` archive into any directory
2. Add your sound file(s) which can be either `.wav` or `.mp3` into the `assets\sounds\` directory
3. Open the `macro.ahk` in `assets\` with a text editor. It will look like this:
```ahk
RAlt::
SoundPlay, sheesh.mp3
return
```
4. Change the file name `sheesh.mp3` to match whatever your file is called.
5. If you want, you can add more hotkeys by copying the AHK function and changing the `RAlt` to another key bind. Official documentation for the AHK key list and combinations can be found on the <a target="_blank" href="https://www.autohotkey.com/docs/KeyList.htm">AutoHotKey Documentation Page</a>

## Installation
1. Double click the `audio_macro.vbs` file and it should prompt you through the installation
2. Restart your PC and the macro will run every time your computer boots up.
3. If you would like to start the macro without Rebooting, navigate to `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup` and click the `audio_macro.vbs` file.

## Uninstalling
1. Go to the task bar and find the AHK icon (Likey a green box with a white "H"), right click it and hit `Exit`
2. Navigate to `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`
3. Delete `audio_macro.vbs`
4. Delete `assets\`
