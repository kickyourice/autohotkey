#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;打开everything
<!Space::
Send, {LCtrl Down}{LShift Down}{Space Down}{Space Up}{LShift Up}{LCtrl Up}
return
;;打开刚关闭的网页
<!<+t::
Send, {LShift Down}{LCtrl Down}t{LShift Up}{LCtrl Up}
return
;;切换搜狗输入法
!Space::
;;Send, {CtrlDown}{,}{CtrlUp};;好用一半
;;Send, {CtrlDown}{Shift}{CtrlUp}
;;Send, {ShiftDown}{Ctrl}{ShiftUp};;好用
;;Send, {CtrlDown}{Space}{CtrlUp};;好用
return

;;lalt+f搜索
<!f::
;;Send, >^f;;这样写会导致输出》
Send, {RControl down}f{RControl up}
return
;;lctrl+f右移
<^f:: 
Send {Right} 
return

;;lalt+a全选
<!a::
send,{RCtrl Down}a{RCtrl Up}
return
;;lctrl+a最左
<^a::
Send {Home}
return

;;隐藏当前窗口
!h::    ;;这里的 #->表示window键  w->表示字母w键					
WinMinimize,A    ;;最小化当前窗口		
return	  

;;alt+k向上
!k::   ;; !->alt键   k->字母键k
Send {Up}   ;;输入 上 键
return
;;alt+j向下
!j::
Send {Down}
return
;;ctrl+b向左
^b::
Send {Left}
return
;;lalt+左键最左
LAlt & Left::
Send {Home}
return
;;lalt+右键最右
LAlt & Right::
Send {End}
return
;;ctrl+e最右
^e::
Send {End}
return

;;alt+c复制
!c::
send,^{c}
return
;;alt+v粘贴
!v::
send,^{v}
return
;;alt+x剪切
!x::
send,^{x}
return
;;alt+z恢复上次动作
!z::
send,^{z}
return
;;alt+s保存
!s::
send,^{s}
return

;;alt+w关闭
!w::
send,^{w}
return

;;alt+l所有窗口最小化
!l::
send,!d
return
;;alt+r刷新网页
!r::
send,{f5}
return
;;alt+t新建窗口或新浏览器标签
!t::
send,^{t}
return

;;热键，且不需要输入结束符直接出结果
:*:mm::
;;	send enter_passwd_here
return
:*:mz::
;;	send enter_name_here
return

;; ctrl+h向左删除
^h::
Send, {Backspace}
return 
;;ctrl+d向右删除
^d::
send, {Del}
return
;;alt+backspace从目前位置删除到行首
!Backspace::
Send {Shift down}{Home}{Shift up}{Backspace}
return
;;ctrl+u不管在什么位置，删除本行
^u::
Send {Home}   ;输出回车
Send +{End}   ;输入shitf键+end键
Send {delete}	;输入delete键
return