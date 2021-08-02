source ~/.oh-my-zshrc

if [ -f ${HOME}/.zplug/init.zsh ]; then
    source ${HOME}/.zplug/init.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done
