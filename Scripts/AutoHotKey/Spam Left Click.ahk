#Requires AutoHotkey v2.0

#SingleInstance Force

; Sends 25 mouse clicks with 50ms delay between each click 
; when the user scrolls the mouse wheel up
WheelUp::
{
    Loop 25
    {
        Click
        Sleep 50
    }
    return
}
