auther:="HEstina"
version:="v0.1b"
developmentDate:="2022-07-15"

Gui, font, cWhite s12, NanumGothic
Gui, Add, Text, , 작  성  자: %auther%`n버       전: %version%`n작  성  일: %developmentDate%`n작동버전: Ragnarok Wolves 4th v2.5
Gui, Add, Button, x10 y100 w280 h50 gStop, 종료
Gui, Color, 000000
Gui, Show, AutoSize Center
MsgBox, for Booya`n`n시작: F1`n`n종료: F10

f12::
WinGet, active_id, ID, A
MsgBox, The active window's ID is "%active_id%"

f1::

Loop
{
	Controlsend, ahk_parent,{f1}, ahk_id %active_id%

	sleep,5000
}
return

f10::
Stop:
GuiClose:
ExitApp
return