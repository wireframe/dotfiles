HOMEBREW_PATH=$(brew --prefix)
# add homebrew npm installed binaries to system path
export PATH=${HOMEBREW_PATH}/share/npm/bin:$PATH

# homebrew bash completion extensions
# brew info bash-completion
if [ -f ${HOMEBREW_PATH}/etc/bash_completion ]; then
  source ${HOMEBREW_PATH}/etc/bash_completion
fi
