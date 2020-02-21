# see https://joshdick.net/2017/06/08/my_git_prompt_for_zsh_revisited.html

# current git branch and status
git_info() {
    BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

    if [ ! -z $BRANCH ]; then
        echo -n "%F{yellow}$BRANCH"

        if [ ! -z "$(git status --short)" ]; then
            echo " %F{red}+"
        fi
    fi
}

path_info() {
    echo '%~'
}

# Use > as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code
input_prompt() {
    echo '%(?.%F{blue}.%F{red})%(!.#.>)%f '
}

setopt prompt_subst
autoload +X colors

PS1='
$(path_info) $(git_info)
$(input_prompt) '
