export VISUAL=subl
export EDITOR=vim
export PATH=$PATH:~/bin:/usr/local/bin

env_config_files=(~/.zsh/**/*.zshenv(N))
if test ! -z "$env_config_files" ;
    then
    for file in ${env_config_files}
    do
      source $file
    done
fi
