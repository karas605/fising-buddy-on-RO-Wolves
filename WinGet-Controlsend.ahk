 f12::
WinGet, active_id, ID, A
MsgBox, The active window's ID is "%active_id%"
 
return
 
 
f11::
Loop,10
{
	Controlsend, ahk_parent,{f1}, ahk_id %active_id%
}
return