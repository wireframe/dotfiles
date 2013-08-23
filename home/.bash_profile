#set -x
echo 'Loading bash profile...'
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi
if [ -f ~/.bash_paths ]; then
  source ~/.bash_paths
fi
if [ -f ~/.bash_env ]; then
  source ~/.bash_env
fi
if [ -f ~/.bash_sublime ]; then
  source ~/.bash_sublime
fi

# homebrew bash completion extensions
# brew info bash-completion
HOMEBREW_PATH=$(brew --prefix)
if [ -f ${HOMEBREW_PATH}/etc/bash_completion ]; then
  echo 'Loading homebrew bash tweaks...'
  source ${HOMEBREW_PATH}/etc/bash_completion
fi

# configure console to include metadata for current Git repo
# available via homebrew git bash completion extensions
# brew info git
if type -t __git_ps1 > /dev/null 2>&1; then
  echo 'Configuring Git bash prompt...'
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '
fi

echo 'Profile loaded => SONNEK BOOM!'