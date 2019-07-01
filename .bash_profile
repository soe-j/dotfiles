if [ -d ~/.bash_profile.d ] && [ -f ~/.bash_profile.d/*.bash_profile ]
then
  for FILES in $(ls ~/.bash_profile.d/*.bash_profile)
  do
    source $FILES
  done
fi

export PATH=$HOME/scripts/bin:$PATH

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

if [ -f ~/.bashrc ]
then
  source ~/.bashrc
fi
