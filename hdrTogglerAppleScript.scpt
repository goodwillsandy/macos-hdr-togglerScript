tell application "System Preferences"
        activate
        set the current pane to pane id "com.apple.preference.displays"
        tell application "System Events"
            tell process "System Preferences"
 
 
                click checkbox "High Dynamic Range, Automatically adjust the display to show high dynamic range content." of sheet 1 of window 1
                click button "Done" of sheet 1 of window "Displays" of application process "System Preferences" of application "System Events"

                tell application "System Preferences" to activate
                tell application "System Preferences" to close window 1
            end tell
        end tell
    end tell

    if application "System Preferences" is running then
        tell application "System Preferences" to quit
    end if