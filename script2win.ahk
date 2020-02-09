#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;打开刚关闭的网页
<!<+t::
Send, {LShift Down}{LCtrl Down}t{LShift Up}{LCtrl Up}
return
;;切换搜狗输入法
!Space::
;;Send, {CtrlDown}{,}{CtrlUp};;好用一半
Send, {CtrlDown}{Shift}{CtrlUp}
;;Send, {ShiftDown}{Ctrl}{ShiftUp};;好用
;;Send, {CtrlDown}{Space}{CtrlUp};;好用
return

<!f::
;;Send, >^f;;这样写会导致输出》
Send, {RControl down}f{RControl up}
return
<^f:: 
Send {Right} 
return

<!a::
send,{RCtrl Down}a{RCtrl Up}
return
<^a::
Send {Home}
return

!h::    ;;这里的 #->表示window键  w->表示字母w键					
WinMinimize,A    ;;最小化当前窗口		
return	  

!k::   ;; !->alt键   k->字母键k
Send {Up}   ;;输入 上 键
return
!j::
Send {Down}
return
^b::
Send {Left}
return
LAlt & Left::
Send {Home}
return
^e::
Send {End}
return
LAlt & Right::
Send {End}
return

!c::
send,^{c}
return
!v::
send,^{v}
return
!x::
send,^{x}
return
!z::
send,^{z}
return
!s::
send,^{s}
return

!w::
send,^{w}
return

!l::
send,!d
return
!r::
send,{f5}
return
!t::
send,^{t}
return

:*:mm::
;;	send enter_passwd_here
return
:*:mz::
;;	send enter_name_here
return

^h::
;;Send {Left}{Del}
Send, {Backspace}
return 
^d::
send, {Del}
return
!Backspace::
Send {Shift down}{Home}{Shift up}{Backspace}
return
^u::
Send {Home}   ;输出回车
Send +{End}   ;输入shitf键+end键
Send {delete}	;输入delete键
return