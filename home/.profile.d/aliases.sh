# Easier navigation
alias ..="cd .."
alias p="cd ~/Projects"
alias o="open"
alias oo="open ."

# Command Shortcuts
alias g="git"
alias b="bundle"
alias c="consular"

alias hist='history | grep $1' #Requires one input
alias h="history"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; npm update npm -g; npm update -g; gem update'

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel complete"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"
