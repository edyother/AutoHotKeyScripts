Pause::ExitApp
SetKeyDelay, 100
SetMouseDelay, 50


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;LumexCAM;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Paste with Mouse input
;XButton2::
;Send,^a
;Return

;Select all and delete with mouse input
XButton2::
Send,^a {Del}
Return

;;Paste with Mouse input
;XButton2::
;Send,^a^v{Enter}
;Return

;XButton2::
;Send,{BackSpace}{BackSpace}{BackSpace}{BackSpace}{BackSpace}{BackSpace}
;Return

;XButton1::
;Send,{Home}{Right}29{Del}{Del}{Enter}
;Return

;XButton1::
;Send,{BackSpace}{BackSpace}{BackSpace}{BackSpace}{BackSpace}{BackSpace}{Left}{Left}{BackSpace}{BackSpace}18{Enter}
;Return

;;Renaming with mouse input
;XButton2::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;InputBox, tnum, Quantity, Setting Number
;num := 8
;vnum := 1
;While, (num > 0)
;{
;ypos := ypos+21
;Click, 250, 200, 2
;Send, ^a {Del}S%tnum%-%vnum%{Return}
;vnum := vnum+1
;Click, %xpos%, %ypos%
;num := num-1
;}
;Return

;;Renaming with mouse input
;XButton2::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;InputBox, pnum, Quantity, Power Number
;InputBox, dir, Direction, X or Y?
;num := 4
;vnum := 1
;While, (num > 0)
;{
;ypos := ypos+21
;Click, 250, 200, 2
;Send, ^a {Del}P%pnum%-V%vnum%-%dir%{Return}
;vnum := vnum+1
;Click, %xpos%, %ypos%
;num := num-1
;}
;Return

;;Assiging sintering conditions to models
;`::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos1, ypos1 
;ypos2 = 230
;num := 32
;While, (num > 0)
;{
;Click, %xpos1%, %ypos1% 
;Click Right, %xpos1%, %ypos1%
;Send,C
;Click, 730, 150
;Click, 1195, 210
;Click, 1175, %ypos2%
;Click, 1350, 1024
;ypos1 := ypos1+22
;ypos2 := ypos2+19
;num := num-1
;}
;Return
 
;;Verify each sintering condition location
;~::
;CoordMode, Mouse, Screen    ;Set coordinate mode
;MouseGetPos, xpos1, ypos1   ;Get Mouse Position                
;num := 16                   ;Set a counter
;While, (num > 0)            ;Start while loop using counter
;{
;Click, %xpos1%, %ypos1%, 2  ;click at chosen mouse position
;Sleep, 500                  ;wait
;Click, %xpos1%, %ypos1%, 2  ;click same mouse position
;ypos1 := ypos1+44           ;adjust next mouse position
;num := num-1                ;adjust counter
;}                           ;end loop
;Return                      ;end script

;f1::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos1, ypos1 
;InputBox, power, Power, Power?
;speed := 500
;num := 4
;While, (num > 0)
;{
;Click Right, %xpos1%, %ypos1%
;Send,C
;Click, 730, 190
;Click, 1260, 180
;Click, 890, 290
;Send,%power%{Tab}%speed%
;Click, 1050, 870
;Click, 1350, 1024
;ypos1 := ypos1+22
;num := num-1
;speed := speed+500 
;}
;Return


;F12::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;Click, 100, 600
;Click, 256, 199
;Click, 256, 199
;send, {Home}
;send, 0 
;Send, {Return}
;Click, %xpos%, %ypos%
;Return

;F12::
;CoordMode, Mouse, Screen
;Click, 100, 600
;Click, 256, 199
;Click, 256, 199
;send, {Home}{Right}{Right}{Right}{Right}
;send, {Del}{Del}{Del}{Del}{Del}{Del}{Del}{Del}{Del}{Del}{Del}{Del}
;send, Top
;Send, {Return}{Return}
;Send, {Down}
;Return

;;Change number of layers to scan speed setting
;Pause::
;num := 2
;while, (num > 0)
;{
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;Send,{Click Right}c
;Click,600,140
;Click,825,185
;Click,1130,130,
;Click,1080,570
;Click,1080,570
;Send,{BackSpace}
;Send,0
;Send,{Return}
;Click,1180, 900
;Click,1220, 975
;Click,%xpos%, %ypos%
;Send,{Down}
;num := num-1
;}
;return


;XButton1::
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;Send,{Click Right}c
;Click,600,100
;return

;; second mouse button renames items in LumexCAM a given number of times
;XButton2::
;num := 8
;while, (num > 0)
;{
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;Click, 100, 600
;Click, 256, 199
;Send, {Home}T
;Send, {Return}
;Click, %xpos%, %ypos%
;Send, {Down}
;num := num-1
;}
;Return

;;testing clicking stuff
;ScrollLock::
;InputBox, qty, Quantity, "How many times?" 
;While, (qty > 0)
;{
;Click, 500, 100
;Click, 1000, 100
;Click, 500, 600
;Click, 1000, 600
;qty := qty-1
;}
;return

;; second mouse button renames items in LumexCAM a given number of times
;XButton2::
;InputBox, num, Quantity, "How many times?" 
;num := 30
;name := 11
;while, (num > 0)
;{
;CoordMode, Mouse, Screen
;MouseGetPos, xpos, ypos 
;Click, 100, 600
;Click, 256, 199
;Click, 256, 199
;Send, ^a
;send, {Delete}
;send, X0%name% 
;Send, {Return}
;Click, %xpos%, %ypos%
;Send, {Down}
;name := name+1
;num := num-1
;}
;Return