echo 'Loading bash aliases...'

#find public IP of native OS
alias copyip='ifconfig en1 | grep '\''inet '\'' | cut -f 2 -d\ | pbcopy'

# reload your shell profile
alias reload='. ~/.bash_profile'

