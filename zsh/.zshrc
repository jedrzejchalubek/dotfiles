source ~/.oh-my-zshrc

config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
