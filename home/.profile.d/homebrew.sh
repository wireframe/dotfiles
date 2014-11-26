# add homebrew npm installed binaries to system path
export PATH=/usr/local/share/npm/bin:$PATH

# homebrew bash completion extensions
# brew info bash-completion
HOMEBREW_PATH=$(brew --prefix)
if [ -f ${HOMEBREW_PATH}/etc/bash_completion ]; then
  echo -n '.'
  source ${HOMEBREW_PATH}/etc/bash_completion
fi
