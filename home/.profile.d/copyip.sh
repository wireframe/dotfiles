# find public IP of native OS
alias copyip='ifconfig en1 | grep '\''inet '\'' | cut -f 2 -d\ | pbcopy'
