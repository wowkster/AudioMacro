' Create Shell object
Set oShell = CreateObject ("Wscript.Shell") 
' Get working directory
workingDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
' Get the startup folder location
startFolder = oShell.ExpandEnvironmentStrings( "%APPDATA%" ) & "\Microsoft\Windows\Start Menu\Programs\Startup"

' If not running in startup folder, copy itself there. Otherwise run the macro
Sub Main()
	
	' Check if the startup folder is the same as the working dir
	If startFolder = workingDir Then 
		' Start script and exit program
		MsgBox "Starting hotkey script...", 0, "Audio Macro"
		ahk
	Else
		MsgBox "Script is not running in startup folder!", 0, "Audio Macro"
		MsgBox "Copying source to startup folder...", 0, "Audio Macro"
		copy
	End If
End Sub

' Copy the files to the startup folder
Function copy

	' Copy the vbs file
	sSourceFile = workingDir & "\" & WScript.ScriptName
	
	sTargetFolder = "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

	sCmd = "%comspec% /c copy """ & sSourceFile & """ """ & sTargetFolder & """ /Y"

	oShell.Run sCmd, 0, True
	
	' Copy the assets folder
	sSourceFile = workingDir & "\assets"
	sTargetFolder = "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\assets"

	sCmd = "%comspec% /c Xcopy /E /I """ & sSourceFile & """ """ & sTargetFolder & """ /Y"

	oShell.Run sCmd, 0, True
	
	MsgBox "Successfully copied source to startup directory!", 0, "Audio Macro"
	MsgBox "The macro will now run whenever your pc restarts!", 0, "Audio Macro"
End Function

' Run the ahk file
Function ahk
	' Run script if AutoHotKey is installed
	If FileExists("C:\Program Files\AutoHotkey\AutoHotkeyU64.exe") Then
		Dim strArgs
		strArgs = """C:\Program Files\AutoHotkey\AutoHotkeyU64.exe"" """ & workingDir & "\assets\macro.ahk"""
		oShell.Run strArgs, 0, false
	Else
		MsgBox "AutoHotKey is not installed, or was not found in it's default directory! Aborting...", 0, "Audio Macro"
	End If
End Function

' Utility method to check if a file exists
Function FileExists(FilePath)
  Set fso = CreateObject("Scripting.FileSystemObject")
  If fso.FileExists(FilePath) Then
    FileExists=CBool(1)
  Else
    FileExists=CBool(0)
  End If
End Function

Call Main
