property newLine : (ASCII character 10)
set results to ""
set flag to true
tell application "System Events"
	tell current location of network preferences
		set vpns to (every service whose (kind is greater than 9 and kind is less than 12))
		repeat with vpn in vpns
			if flag is true then
				set flag to false
			else
				set results to results & newLine
			end if
			set vpnName to (the name of vpn) as string
			set results to results & vpnName
			set isConnected to (connected of current configuration of vpn) as string
			set results to results & "|" & isConnected
		end repeat
	end tell
end tell
results
