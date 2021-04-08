
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

1. Download and unzip the [AudioMacro.zip](https://github.com/wowkster/AudioMacro/releases/tag/1.0.0 "Download Latest Release") archive into any empty directory
1. Add your sound file(s) which can be either `.wav` or `.mp3` into the `assets\sounds\` directory
1. Open the `macro.ahk` in `assets\` with a text editor. It will look like this:
```ahk
RAlt::
SoundPlay, sheesh.mp3
return
```
1. Change the file name `sheesh.mp3` to match whatever your file is called.
1. If you want, you can add more hotkeys by copying the AHK function and changing the `RAlt` to another key bind. Official documentation for the AHK key list and combinations can be found on the [AutoHotKey Documentation Page](https://www.autohotkey.com/docs/KeyList.htm "Official Documentation")

## Installation
1. Install AutoHotKey from [here](https://www.autohotkey.com/ "Download AutoHotkey").
1. Double click the `audio_macro.vbs` file and it should prompt you through the installation
1. Restart your PC and the macro will run every time your computer boots up.
1. If you would like to start the macro without Rebooting, navigate to `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup` and click the `audio_macro.vbs` file.

## Uninstalling
1. Go to the task bar and find the AHK icon (Likey a green box with a white "H"), right click it and hit `Exit`
1. Navigate to `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`
1. Delete `audio_macro.vbs`
1. Delete `assets\`
