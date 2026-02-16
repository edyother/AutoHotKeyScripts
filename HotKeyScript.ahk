Pause::ExitApp
SetKeyDelay, 100
SetMouseDelay, 50

;shortcut for typing a common line of text
^!6::
Send, Give me a call when you get here so I can let you in. (636)344-0890{Return}{Return}Thanks,{Return}Ed
Return


;shortcut for typing a common line of text
^!1::
Send,{Return}Thanks,{Return}Ed
Return

;remap ctrl+` to ctrl+7 for iso view in solidworks
^`::^7
Return

;Logo-z closes a program
#z::!F4
return

; sends the start of a header for abc files
^!a::
send, X:1{Return}T:{Return}C:{Return}C:{Return}S:{Return}L:1/8{Return}R:{Return}M:{Return}K:{Return}
return

;regular datestamp prefix
^d::
Send, %A_YYYY%-%A_MM%-%A_DD%_
Return

; ;Lisp Template
; !^'::
; send,(defun c:(){Return}(command ){Return}(princ){Return})
; return

 ; opens file explorer at Project Folders
 ^!p::
 Run explorer.exe Z:\data\Projects
 return

 ; opens file explorer at MMRL
 ^!m::
 Run explorer.exe "C:\Users\eyother\OneDrive - purdue.edu\MMRL"
 return

; sends long date 
^!d::
Send, %A_dddd%, %A_MMMM% %A_dd%, %A_yyyy%
return

; sends long time for changelog
^#t:: Send, **%A_Hour%:%A_Min%** 
return

