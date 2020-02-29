#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;如果在adobe pdf中，F1指向ctrl+h，用来显示阅读模式,已在下文中的ctrl+h代码块中删除了ctrl+h删除功能在adobe pdf中的应用
#If WinActive("ahk_exe Acrobat.exe") 
F1::
Send, {CtrlDown}h{CtrlUp}
return
#If

;alt加减号缩放
Alt & +::
Send, {LControl Down}{+}{LControl Up}
return
Alt & -::
Send, {LControl Down}{-}{LControl Up}
return
Alt & 0::
Send, {CtrlDown}0{CtrlUp}}
return

;lalt+q强制关闭当前程序,排除DDFC
#If not WinActive("航空维修工程系统 - 360极速浏览器 12.0")
<!q::
Send, {LAlt Down}{F4}{LAlt Up}
#If
Return

;;打开everything
;;<!Space::
#Space::
Send, {LCtrl Down}{LShift Down}{Space Down}{Space Up}{LShift Up}{LCtrl Up}
return
;;打开刚关闭的网页
<!<+t::
Send, {LShift Down}{LCtrl Down}t{LShift Up}{LCtrl Up}
return
;;切换搜狗输入法
<!Space::
;;Send, {CtrlDown}{,}{CtrlUp};;好用一半
;;Send, {CtrlDown}{Shift}{CtrlUp}
;;Send, {ShiftDown}{Ctrl}{ShiftUp};;好用
Send, {CtrlDown}{Space}{CtrlUp}
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
;;最小化左右窗口
<!d::
Send, {LWinDown}d{LWinUp}
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
;;win+v清除文本格式粘贴
#v::
Clipboard=%Clipboard%   ; will remove formatting
Sleep, 100   ; wait for Clipboard to update
Send ^v
return
;;alt+x剪切
!x::
send,^{x}
return
;;alt+z恢复上次动作
!z::
send,^{z}
return
;alt+s保存,由于alt+s在outlook里面用于发送邮件，所以设置在outlook里面不启用
;#If not WinActive("ahk_exe OUTLOOK.EXE") 
!s::
send,^{s}
return
;#If

;;alt+w关闭
!w::
send,^{w}
return

;;lalt+l 快速定位到地址栏
<!l::
Send,{RAlt Down}d{RAlt Up}
;;Msgbox, hello
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

;; ctrl+h向左删除，排除ctrl+h在adobe pdf中的应用
#If not WinActive("ahk_exe Acrobat.exe") 
^h::
Send, {Backspace}
return 
#If
;;ctrl+d向右删除,在Xshell应用中不启用
#If not WinActive("ahk_exe Xshell.exe") ;if the window with the ahk_class "Notepad" is active
^d::
send, {Del}
return
#If
;;alt+backspace从目前位置删除到行首
!Backspace::
Send, {LCtrl Down}{Backspace Down}{Backspace Up}{LCtrl Up}
/*
Send {Shift down}{Home}{Shift up}{Backspace}
;在类似邮件应用中如果不加入以下内容，会导致本行换行符也被删除，但是在vscode中不会，所以排除掉vscode
if Not WinActive("ahk_exe Code.exe") 
{
    Send, {Enter}
    Send, {Up}
}
*/
return
;;ctrl+u，删除从光标位置到行首的内容，在Xshel应用中不启用
#If not WinActive("ahk_exe Xshell.exe") ;if the window with the ahk_class "Notepad" is active
<^u::
Send, {LCtrl Down}{Backspace Down}{Backspace Up}{LCtrl Up}
return
#If
;ctrl+k 删除从光标位置到行尾的内容，在Xshell应用中不启用
#If not WinActive("ahk_exe Xshell.exe") ;if the window with the ahk_class "Notepad" is active
<^k::
Send, {ShiftDown}{End}
Send {delete}	;输入delete键
return
#If
/*
WinActive的另一种写完，卸载按键里面
<^u::
if Not WinActive("ahk_exe Xshell.exe") ;if the window with the ahk_class "Notepad" is active
{
    Send {Home}   ;输出回车
    Send +{End}   ;输入shitf键+end键
    Send {delete}	;输入delete键
   ; MsgBox, sdfsdfsdfsdf
}else{
}
return
*/