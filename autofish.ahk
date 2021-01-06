#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

ThisTitle := "Minecraft Auto Fisher"
toggle := 0

MsgBox, , %ThisTitle%, %A_ScriptName% started... (Ctrl+i for info), 2

^i:: ; ------------------------------------ info box
MsgBox, 64, %ThisTitle%,
(
Ctrl+f - Toggle automatic fishing
Note that subtitles are required: 
Pause -> Options -> Accessibility Settings -> Show Subtitles: ON

Ctrl+i - Info box (this)
Ctrl+x - Exit script
)
return

^x:: ; ------------------------------------ exit script
toggle := 0
MsgBox, 17, %ThisTitle%, Exit %A_ScriptName%?,
IfMsgBox, OK
	ExitApp
MsgBox, , %ThisTitle%, Script continuing, 1
return

#MaxThreadsPerHotkey 2

^f:: ; ------------------------------------ toggle automatic fishing
toggle := !toggle
while toggle
{
	Send {RButton}
	Sleep 1500
	ErrorLevel := -1
	while (ErrorLevel != 0 && toggle)
	{
		Sleep 200
		CoordMode Pixel
		ImageSearch, ImgX, ImgY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 fi.bmp
		if (ErrorLevel = 2)
		{
			toggle := 0
			MsgBox, 48, %ThisTitle%, ImageSearch ERROR, 1
		}
	}
	Send {RButton}
	Sleep 500
}
return


