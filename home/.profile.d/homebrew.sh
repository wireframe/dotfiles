# add homebrew installed components to the system path
export PATH=/usr/local/bin:$PATH

# add homebrew npm installed binaries to system path
export PATH=/usr/local/share/npm/bin:$PATH

# homebrew bash completion extensions
# brew info bash-completion
HOMEBREW_PATH=$(brew --prefix)
if [ -f ${HOMEBREW_PATH}/etc/bash_completion ]; then
  echo 'Loading homebrew bash tweaks...'
  source ${HOMEBREW_PATH}/etc/bash_completion
fi
