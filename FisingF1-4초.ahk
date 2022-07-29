auther:="karas605-헤스티나"
version:="v1.1"
developmentDate:="2022-07-28"
use:="Ragnarok Wolves 4th v2.5"
startkey:="F1"
; stopkey:="F11"
item:="고급미끼를 4초"
; pausekey:="Ctrl+F11"
; suspendkey:="Ctrl+F10"

Gui, font, cWhite s10, NanumGothic
Gui, Add, Text, , 작  성  자: %auther%
Gui, Add, Text, , 버       전: %version%
Gui, Add, Text, , 작  성  일: %developmentDate%
Gui, Add, Text, , 작동버전 : %use%
Gui, Add, Text, , 시작키 : %startkey%
Gui, Add, Text, , 종료키 : %stopkey%
; Gui, Add, Text, , 일시정지/재시작 : %pausekey%
; Gui, Add, Text, , 단축키 비활성화 : %suspendkey%
Gui, Color, 000000
Gui, show, x10 y5 AutoSize

MsgBox,,, %startkey%에 미끼를 놓습니다`n %item%마다 던집니다.`n`n관리자 권한으로 실행하셔야 작동됩니다.`n`n비활성화창(다른창으로 전환)이 되어도`n매크로가 시작된거면 계속 그 창에서 시전됩니다.`n`n이 도움말 창은 10초후 자동으로 사라집니다. 신경쓰지 마세요.,10

f1::
WinGet, active_id, ID, A
MsgBox,,,F1 - %item% 반복 시작...,1

Suspend
Loop
{
	Controlsend, ahk_parent,{f1}, ahk_id %active_id%
	sleep,4000
}
return

; f4::
; MsgBox,,, Suspend, 1
; Suspend
; return
; 
; f3::
; MsgBox,,,Pause,1
; Pause, Toggle
; return
; 
; f11::
Stop:
GuiClose:
MsgBox,,,종료,0.5
ExitApp
return