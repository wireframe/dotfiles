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

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

echo 'Profile loaded => SONNEK BOOM!'