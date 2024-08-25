; sus macro lol
; for hades rng haha (made in 24/8/2024)
; you are currently using version v0.1
; modify it if its not to ur liking
; free for anyone to use
; GNU General Public License

;some variables

pos_one := True
pos_two := True
pos_three := True
pos_four := True
pos_five := True
pos_six := True

start_macro := False

HoldW(secondsW){
	Send {w down}
	Sleep, secondsW
	Send {w up}
}
HoldA(secondsA){
	Send {a down}
	Sleep, secondsA
	Send {a up}
}
HoldS(secondsS){
	Send {s down}
	Sleep, secondsS
	Send {s up}
}
HoldD(secondsD){
	Send {d down}
	Sleep, secondsd
	Send {d up}
}
HoldSpace(secondsSpace){
	Send {Space down}
	Sleep, secondsSpace
	Send {Space up}
}


;Main part of macro
CameraAlign(){
	Send, {Esc}
	Sleep, 450
	Send, r
	Sleep, 250
	Send, {Enter}
}
PartI(){
	HoldW(1300)
	Sleep, 1000
	HoldD(2500)
	Sleep, 500
	HoldS(300)
	Sleep, 500
	HoldD(300)
	HoldW(2000)
	Sleep, 300
	HoldD(200)
	Sleep, 300
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	HoldD(4800)
	HoldSpace(100)
	HoldD(1500)
	Sleep, 250
	HoldW(350)
	HoldSpace(100)
	HoldW(600)
	Sleep, 250
	HoldA(300)
	HoldSpace(100)
	HoldA(350)
	Sleep, 200
	HoldW(150)
	HoldSpace(100)
	HoldW(350)
	Sleep, 250
	HoldSpace(100)
	HoldW(350)
	Sleep, 250
	HoldA(300)
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	Send, e
	
}

partII(){
	HoldS(6000)
	Sleep, 300
	HoldD(11500)
	Sleep, 500
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	HoldS(5800)
	Sleep, 250
	HoldD(6000)
	Sleep, 250
	HoldS(2000)
	Send, e
	Sleep, 100
	Send, e
	Sleep, 100
	Send, e
	Sleep, 250

	;Sleep, 250
	;Send, e
	;Sleep, 100
	;Send, e
	;Sleep, 100
	;Send, e
	

	
}

;Consolidate all functions into macro
MainMacro(){
	loop
	{
	 MouseGetPos, x, y
	 MouseMove, x, y+100
	 MouseClick, Left
	 return
	 CameraAlign()
	 Sleep, 3000
	 partI()
	 CameraAlign()
	 Sleep, 3000
	 partII()
	}
}

;Sleep, 1000
;MainMacro()


;GUI setup

MsgBox This is a new macro, expect bugs/inaccuracies of the macro to occur
Gui, Show, w250 h75, hade's rng macro

Gui, Add, Button, x10 y30 w50 h35, Start macro (F1)
Gui, Add, Button, x75 y30 w50 h35, End macro (F2)
Gui, Add, Button, x130 y30 w50 h35, Github Page (F3)



F1::
   MainMacro()  ; Call the function when F1 is pressed
return

F2::
    Process, Close, AutoHotKey.exe
return

F3::
    Run % "https://github.com/spatialdeez/hade-rng-macro"
return

return

GuiClose:
ExitApp

