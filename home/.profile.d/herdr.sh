# herdr - terminal workspace manager for coding agents
# Completions are generated: herdr completion zsh > ~/.config/zsh/completions/_herdr
# Regenerate after a `herdr update`. compinit runs later, in peon-ping.sh.
if [ -n "$ZSH_VERSION" ] && [ -d "$HOME/.config/zsh/completions" ]; then
    fpath=("$HOME/.config/zsh/completions" $fpath)
fi
