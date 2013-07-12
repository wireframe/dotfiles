#set -x
echo 'Loading bash profile...'
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
if [ -f ~/.bash_paths ]; then
  . ~/.bash_paths
fi
if [ -f ~/.bash_env ]; then
  . ~/.bash_env
fi
if [ -f ~/.bash_completion ]; then
  . ~/.bash_completion
fi
if [ -f ~/.bundler-exec.sh ]; then
  . ~/.bundler-exec.sh
fi

# homebrew bash completion extension
# brew info bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  echo 'Loading homebrew bash tweaks...'
  . $(brew --prefix)/etc/bash_completion
fi

# homebrew git bash completion extensions 
# brew info git
if [ -d /usr/local/etc/bash_completion.d ]; then
  for f in /usr/local/etc/bash_completion.d/*.*; do
    echo "Loading ${f}..."
    source $f;
  done
fi


echo 'Profile loaded.'

# tweak console display
# The argument to __git_ps1 will be displayed only if you
# are currently in a git repository.  The %s token will be
# the name of the current branch.

# In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty
# value, unstaged (*) and staged (+) changes will be shown next
# to the branch name.  You can configure this per-repository
# with the bash.showDirtyState variable, which defaults to true
# once GIT_PS1_SHOWDIRTYSTATE is enabled.

# You can also see if currently something is stashed, by setting
# GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,
# then a '$' will be shown next to the branch name.

# If you would like to see if there're untracked files, then you can
# set GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there're
# untracked files, then a '%' will be shown next to the branch name.

# If you would like to see the difference between HEAD and its
# upstream, set GIT_PS1_SHOWUPSTREAM="auto".  A "<" indicates
# you are behind, ">" indicates you are ahead, and "<>"
# indicates you have diverged.  You can further control
# behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated
# list of values:
#     verbose       show number of commits ahead/behind (+/-) upstream
#     legacy        don't use the '--count' option available in recent
#                   versions of git-rev-list
#     git           always compare HEAD to @{upstream}
#     svn           always compare HEAD to your SVN upstream
# By default, __git_ps1 will compare HEAD to your SVN upstream
# if it can find one, or @{upstream} otherwise.  Once you have
# set GIT_PS1_SHOWUPSTREAM, you can override it on a
# per-repository basis by setting the bash.showUpstream config
# variable.
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  echo "Initializing new SSH agent..."
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add;
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  #ps ${SSH_AGENT_PID} doesn't work under cywgin
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
