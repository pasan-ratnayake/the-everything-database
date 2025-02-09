; AutoHotKey V2.0 script template
; 
; Searches the locations in the list and runs the .ahk files in them.
; Place in C:\Users\<Current User>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup folder 
; to automatically load the script at the startup to run your essential scripts
; 
; You can also save it in your desktop, and run it manually

#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; Add more locations to search for .ahk files to run
autoLoadAHKDirectories := [
    "C:\Code\AutoHotKey\Scripts"
]

allCount := 0
successCount := 0

Loop autoLoadAHKDirectories.Length {
    autoLoadDirectory := autoLoadAHKDirectories[A_Index]
    If ( Not FileExist(autoLoadDirectory))
        continue

    Loop Files, autoLoadDirectory "\*.ahk"
    {
        allCount++
        Run A_LoopFileFullPath
    }
}

message := ""

if (allCount > 0)
    message .= "Loaded " allCount " AHK files"
else
    message .= "No AHK files found"

message .= " in " autoLoadAHKDirectories.Length " directories."

MsgBox message, "AutoHotKey AutoLoad Script"