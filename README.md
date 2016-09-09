# ZQuake
#####ZQuake is a Drop-down console window with OpenSSH integrated for Windows.
>Yakuake-like convenience for the sad times you are forced to use Windows.

ZQuake is simply a combination of 3 awesome open source tools.
 - [Console2]
 - [AutoHotKey]
 - [OpenSSH for Windows]

#####Console
>Console is a Windows console window enhancement. Console features include: multiple tabs, text editor-like text selection, different background types, alpha and color-key transparency, configurable font, different window styles

#####AutoHotKey
>AutoHotkey - a scripting language for desktop automation

#####OpenSSH for Windows
>OpenSSH for Windows An installer for a minimal installation of the Cygwin environment suitable for running an OpenSSH server on the Windows platform.

##How To Use
1. Install AutoHotKey
2. Compile the 'ZQuake_source.ahk' scripting
3. Install Console
4. Install OpenSSH
5. It is recommended to copy OpenSSH directory in Console install directory 
6. Overwrite the console.xml with the one given here (or write your own configurization :) )
7. Copy the compiled 'ZQuake_source.ahk' in Console directory
8. Recommended to place a shortcut for 'ZQuake.exe' in your startup folder to start on boot

##Example directory Setup
>-rwxr-xr-x 1 Console.exe <br />
>-rwxr-xr-x 1 ConsoleHook.dll <br />
>-rwxr-xr-x 1 FreeImage.dll <br />
>-rwxr-xr-x 1 FreeImagePlus.dll <br />
>-rw-r--r-- 1 GPLv2.txt <br />
>drwxr-xr-x 1 OpenSSH/ <br />
>-rwxr-xr-x 1 ZQuake.exe <br />
>-rw-r--r-- 1 ZQuake_source.ahk <br />
>-rw-r--r-- 1 console.chm <br />
>-rw-r--r-- 1 console.xml <br />
>-rw-r--r-- 1 ico_sys_command.ico <br />


##Usage - Hot Keys
  * F12: Trigger ZQuake, Drop-down, Move-up.
  * F11: Toggle fullscreen.
  * Ctrl + Shift + T: New Tab.
  * Ctrl + Shift + Q: Exit Tab.
  * Ctrl + Right Arrow: Next Tab.
  * Ctrl + Left Arrow: Previous Tab.
  * Ctrl + Shift + C: Copy.
  * Ctrl + Shift + V: Paste
  * Mouse Scroller Button: Copy/Paste.

###Notes 
  * The ZQuake.exe is placed to the startup folder, to start on Windows boot automaticaly.
  * OpenSSH runs only from the starting directory of the Console. If you need to run it globally, you should place the the OpenSSH binary files in the Windows/system/ directory and change the settings in the console2 xml config file.

##Version
[1.0.0]

##Licence
GPLv3

>Copyright (C) 2016  Zantalis Fotios





[console2]:http://sourceforge.net/projects/console/
[autohotkey]:http://www.autohotkey.com/
[openssh for windows]:http://sourceforge.net/projects/sshwindows/
