# find public IP of native OS
alias copyip='ifconfig en0 | grep '\''inet '\'' | cut -f 2 -d\ | pbcopy'
