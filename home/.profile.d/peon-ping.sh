# peon-ping quick controls
alias peon="bash /Users/ryansonnek/.claude/hooks/peon-ping/peon.sh"
if [ -n "$ZSH_VERSION" ]; then
    autoload -Uz compinit && compinit
fi
[ -f /Users/ryansonnek/.claude/hooks/peon-ping/completions.bash ] && source /Users/ryansonnek/.claude/hooks/peon-ping/completions.bash
