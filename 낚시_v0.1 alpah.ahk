auther:="karas605"
version:="v0.1alpha"
developmentDate:="2022-07-15~16"
use:="Ragnarok Wolves 4th v2.5"

Gui, font, cWhite s15, NanumGothic
Gui, Add, Text, , 작  성  자: %auther%
Gui, Add, Text, , 버       전: %version%
Gui, Add, Text, , 작  성  일: %developmentDate%
Gui, Add, Text, , 작동버전 : %use%

Gui, Add, Button, x10 y180 w350 h50 gStop, 종료
Gui, Color, 000000
Gui, Show, AutoSize Center

MsgBox, F1에 미끼를 놓고 게임에서 F1을 누르면 시작됩니다.`n`n시작: F1      종료: F10`n`n5초마다 미끼를 던집니다.
MsgBox, 비활성화 창에도 F1을 누르고나면 계속 시전됩니다.`n`n


f1::
WinGet, active_id, ID, A

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