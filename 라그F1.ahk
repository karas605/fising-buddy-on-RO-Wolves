auther:="karas605-Çì½ºÆ¼³ª"
version:="v1.1"
developmentDate:="2023-04-30"
use:="Ragnarok Wolves 4th v2.5"
startkey:="F1"
stopkey:="F12"
item:="F1 0.1ÃÊ"
pausekey:="F8"
suspendkey:="F7"

Gui, font, cWhite s10, NanumGothic
Gui, Add, Text, , ÀÛ  ¼º  ÀÚ: %auther%
Gui, Add, Text, , ¹ö       Àü: %version%
Gui, Add, Text, , ÀÛ  ¼º  ÀÏ: %developmentDate%
Gui, Add, Text, , ÀÛµ¿¹öÀü : %use%
Gui, Add, Text, , ½ÃÀÛÅ° : %startkey%
Gui, Add, Text, , ¸ðµÎ Á¾·áÅ° : %stopkey%
Gui, Add, Text, , ÀÏ½ÃÁ¤Áö/Àç½ÃÀÛ : %pausekey%
Gui, Add, Text, , Àç½ÃÀÛ : %suspendkey%
Gui, Color, 000000
Gui, show, x10 y5 AutoSize

;pMsgBox,,, %startkey%¿¡ ½ÇÇàÇÒ ¾ÆÀÌÅÛÀ» ³õ½À´Ï´Ù`n%item%¸¦ ½ÃÀÛÇÕ´Ï´Ù.`n`n°ü¸®ÀÚ ±ÇÇÑÀ¸·Î ½ÇÇàÇÏ¼Å¾ß ÀÛµ¿µË´Ï´Ù.`n`nºñÈ°¼ºÈ­Ã¢(´Ù¸¥Ã¢À¸·Î ÀüÈ¯)ÀÌ µÇ¾îµµ`n¸ÅÅ©·Î°¡ ½ÃÀÛµÈ°Å¸é °è¼Ó ±× Ã¢¿¡¼­ ½ÃÀüµË´Ï´Ù.`n`n ÀÌ µµ¿ò¸» Ã¢Àº 10ÃÊÈÄ ÀÚµ¿À¸·Î »ç¶óÁý´Ï´Ù.,10

f1::
WinGet, active_id, ID, A
MsgBox,,,F1-%item%ÃÊ ¹Ýº¹ ½ÃÀÛ...,1
Loop
{
	Controlsend, ahk_parent,{f1}, ahk_id %active_id%
	sleep,100
}
return

f7::
MsgBox,,, Suspend, 1
Suspend
return

f8::
MsgBox,,,Pause,1
Pause, Toggle
return

f12::
Stop:
GuiClose:
MsgBox,,,Á¾·á,0.5
ExitApp
return