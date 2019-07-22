# Load completion library for those sweet [tab] squares
zplug "zsh-users/zsh-completions"
# History search feature, where you can type in any part of any command from history
zplug "zsh-users/zsh-history-substring-search"
# Syntax highlighting for commands, load last
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3
# Spaceship Theme
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Install and load plugins
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose
