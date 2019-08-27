$1::
Loop {
  Send 1
    If (GetKeyState("1","P")=0)
    Break
    Sleep 10
}
return

$!1::
Loop {
  Send 6
    If (GetKeyState("1","P")=0){
      Break
    }
  Sleep 10
}
return

$2::
Loop {
  Send 2
    If (GetKeyState("2","P")=0)
    Break
    Sleep 10
}
return

$!2::
Loop {
  Send 7
    If (GetKeyState("2","P")=0){
      Break
    }
  Sleep 10
}
return

$3::
Loop {
  Send 3
    If (GetKeyState("3","P")=0)
    Break
    Sleep 10
}
return

$!3::
Loop {
  Send 8
    If (GetKeyState("3","P")=0){
      Break
    }
  Sleep 10
}
return

$4::
Loop {
  Send 4
    If (GetKeyState("4","P")=0)
    Break
    Sleep 10
}
return

$!4::
Loop {
  Send 9
    If (GetKeyState("4","P")=0){
      Break
    }
  Sleep 10
}
return

$5::
Loop {
  Send 5
    If (GetKeyState("5","P")=0)
    Break
    Sleep 10
}
return

$!5::
Loop {
Send 0
If (GetKeyState("5","P")=0){
		Break
}
Sleep 10
}
return

$q::
Loop {
  Send q
    If (GetKeyState("q","P")=0)
    Break
    Sleep 10
}
return

$e::
Loop {
  Send e
    If (GetKeyState("e","P")=0)
    Break
    Sleep 10
}
return

$r::
Loop {
  Send r
    If (GetKeyState("r","P")=0)
    Break
    Sleep 10
}
return

$t::
Loop {
  Send t
    If (GetKeyState("t","P")=0)
    Break
    Sleep 10
}
return


$f::
Loop {
  Send f
    If (GetKeyState("f","P")=0)
    Break
    Sleep 10
}
return

$g::
Loop {
  Send g
    If (GetKeyState("g","P")=0)
    Break
    Sleep 10
}
return

$c::
Loop {
  Send c
    If (GetKeyState("c","P")=0)
    Break
    Sleep 10
}
return

$v::
Loop {
  Send v
    If (GetKeyState("v","P")=0)
    Break
    Sleep 10
}
return

$Enter::
Suspend, On
Send {Enter}
return

$Esc::
Suspend, Off
Send {Esc}
return

$u::
Suspend, On
Send u
return

