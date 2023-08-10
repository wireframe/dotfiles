HOMEBREW_PATH="/opt/homebrew"
export PATH=${HOMEBREW_PATH}/bin:$PATH

# add homebrew npm installed binaries to system path
export PATH=${HOMEBREW_PATH}/share/npm/bin:$PATH

# add homebrew bash completion extensions
# NOTE: this does not work for zsh
# $ brew info bash-completion
if [ -n "$BASH_VERSION" ]; then
    HOMEBREW_PATH=$(brew --prefix)
    if [ -f ${HOMEBREW_PATH}/etc/bash_completion ]; then
        source ${HOMEBREW_PATH}/etc/bash_completion
    fi
fi
