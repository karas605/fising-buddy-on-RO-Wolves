A=Ragnarok

WinActivate, %A%
WinGetTitle, Title, A
WinGetClass, class, A
WinGetText, text, A
WinGet, ActiveControlList, ControlList, A
WinGet, ActiveControlListHwnd, ControlListHwnd, A


Loop, Parse, ActiveControlList, `n
	{
	AC=%AC%`n#%a_index%:[%A_LoopField%]
	}




Loop, Parse, ActiveControlListHwnd, `n
	{
	HC=%HC%`n#%a_index%:[%A_LoopField%]
	}


	
msgbox, %AC% 
msgbox, %HC%