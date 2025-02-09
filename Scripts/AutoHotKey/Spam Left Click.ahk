; Basic AutoHotKey V2.0 script template
; 
; Sends multiple left clicks when the mouse wheel is scrolled up

#Requires AutoHotkey v2.0

#SingleInstance Force

WheelUp::
{
    Loop 25
    {
        Click
        Sleep 40 ; The sleep time avoids the application event overload by reducing the amount of clicks within a second
    }
    return
}
