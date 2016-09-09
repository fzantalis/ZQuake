;=====================Licence GPLv2======================
;Copyright (C) 2015 Fotios Zantalis
;
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either version 2
;of the License, or (at your option) any later version.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
;========================================================


;=====================Set Variables======================
RegRead, OutputVar, HKEY_LOCAL_MACHINE, SOFTWARE\Microsoft\Windows\CurrentVersion, ProgramFilesDir (x86)
PathToConsole = "%OutputVar%\zquake\Console.exe"
;========================================================

;Speed up drop down animation (default value is 100)
SetWinDelay, 9

;Hide tray icon
#NoTrayIcon

;Copy paste functionality with the mouse scroller
copy_paste_button = MButton

WinGetPos, TrayX, TrayY, TrayW, TrayH, ahk_class Shell_TrayWnd

WinWait, ZQuake
WinMove, ZQuake, , 0, 0
;WinMove, ZQuake, , 0, 0, A_ScreenWidth

WinGetPos, X, Y, Width, Height, ZQuake

;========================================================
;Maximize/Restore functionality with F11 key
F11::

WinGet MX, MinMax, ZQuake
If (%MXZ% == 0)
{
WinMove ZQuake, , , 0, , Height
WinWait, ZQuake
WinMove, ZQuake, , , 0
MXZ = 1
}
Else 
{
WinMove ZQuake, , , 0, , A_ScreenHeight - TrayH
MXZ = 0
}
return
;========================================================

; F12 Key to trigger ZQuake
F12::

DetectHiddenWindows, on
IfWinExist ahk_class Console_2_Main
{
	IfWinActive ahk_class Console_2_Main
	  {
			;Animate up
			Gosub MOVEUP
			WinHide ahk_class Console_2_Main
			WinActivate ahk_class Shell_TrayWnd
		}
	else
	  {
	    WinShow ahk_class Console_2_Main
	    WinActivate ahk_class Console_2_Main
	    ;Animate down   
	    Gosub MOVEDOWN
	  }
}
else
	
	Run %PathToConsole%

DetectHiddenWindows, off
return
;========================================================

; hide Console on "F12".
#IfWinActive ahk_class Console_2_Main
F12::
{
	;Animate up
        Gosub MOVEUP
   	WinHide ahk_class Console_2_Main
   	WinActivate ahk_class Shell_TrayWnd
}
return
;========================================================

;Animation Presets
MOVEDOWN:
WinMove, , , , -500
WinMove, , , , -450
WinMove, , , , -400
WinMove, , , , -350
WinMove, , , , -300
WinMove, , , , -250 
WinMove, , , , -200 
WinMove, , , , -150 
WinMove, , , , -100 
WinMove, , , , -050 
WinMove, , , ,  000 
Return

MOVEUP:
WinMove, , , , -000 
WinMove, , , , -050 
WinMove, , , , -100 
WinMove, , , , -150 
WinMove, , , , -200 
WinMove, , , , -250 
WinMove, , , , -300 
WinMove, , , , -350 
WinMove, , , , -400 
WinMove, , , , -450 
WinMove, , , , -500 
Return

