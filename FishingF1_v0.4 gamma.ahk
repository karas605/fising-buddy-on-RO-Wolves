auther:="karas605-헤스티나"
version:="v0.4 gamma"
developmentDate:="2022-07-20"
use:="Ragnarok Wolves 4th v2.5"

Gui, font, cWhite s15, NanumGothic
Gui, Add, Text, , 작  성  자: %auther%
Gui, Add, Text, , 버       전: %version%
Gui, Add, Text, , 작  성  일: %developmentDate%
Gui, Add, Text, , 작동버전 : %use%

Gui, Add, Button, x10 y180 w350 h50 gStop, 종료
Gui, Color, 000000
Gui, Show, AutoSize

MsgBox,,, F1에 미끼를 놓고 게임에서 F1 을 누르면 시작됩니다.`n종료키는 F12 `n`n3초마다 미끼를 던집니다.`n관리자 권한으로 실행하셔야 작동됩니다.`n비활성화창(다른창으로 전환)이 되어도`n매크로가 시작된거면 계속 그 창에서 시전됩니다.`n`n이 도움말 창은 5초후 자동으로 사라집니다.,5

f1::
WinGet, active_id, ID, A
MsgBox,,,Loop Start...,1
Loop
{
	Controlsend, ahk_parent,{f1}, ahk_id %active_id%
	sleep,3000
}
return

f12::
Stop:
GuiClose:
ExitApp
return