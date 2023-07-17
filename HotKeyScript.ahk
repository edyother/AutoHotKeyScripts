; first mouse button sends a number. I use for moving objects to same elevation
XButton1::
Send, {Backspace}211.00027820{Space}
return

; second mouse button sends 0,0,0
XButton2::
Send, 0,0,0{Space}
return

; sends the start of a header for abc files
^!a::
send, X:1{Return}T:{Return}C:{Return}C:{Return}S:{Return}L:1/8{Return}R:{Return}M:{Return}K:{Return}
return

;regular datestamp prefix
^d::
Send, %A_YYYY%-%A_MM%-%A_DD%-%A_Hour%%A_Min%_
Return

;remap f1 key to esc
F1::ESC
return

; ;remap volume keys
; Volume_Up::'
; return
; 
; Volume_Down::"
; return
; 
; Volume_Mute::!F4
; return
; 
; ; opens file explorer at the server
; ^!g::
; Run explorer.exe "G:\"
; return
; 
; ;Lisp Template
; !^'::
; send,(defun c:(){Return}(command ){Return}(princ){Return})
; return

; sends long date 
^!d::
Send, %A_dddd%, %A_MMMM% %A_dd%, %A_yyyy%
return

; sends long time for changelog
^#t::
Send, **%A_Hour%:%A_Min%**
return

