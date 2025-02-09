; Basic AutoHotKey V2.0 script template
; 
; Runs when the application is active only
; Any event handlers written in between the #HotIf will only function within the target application
; Change the <Target Application Title> to match the application of your choice
; 
; PageDown = Script Pause
; PageUp = Script Up

#Requires AutoHotkey v2.0

#SingleInstance Force

SetKeyDelay 0
SetTitleMatchMode 2

BreakScript := false

SoundBeep 500, 500

PgUp::{
    global BreakScript := false
    SoundBeep 500, 100
    SoundBeep 500, 100
}

PgDn::{
    global BreakScript := true
    SoundBeep 500, 500
}

#HotIf WinActive("Target Application Title") and BreakScript = false

; Write code in here to target the application

#HotIf