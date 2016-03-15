echo -n 'Loading bash profile...'

# load all customizations from ~/.profile.d directory
if [ -d ~/.profile.d ]; then
  for i in ~/.profile.d/*.sh; do
    if [ -r $i ]; then
      echo -n .
      source $i
    fi
  done
  unset i
fi

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

echo 'SONNEK BOOM 🔥🔥🔥'
source /Users/ryansonnek/.betterup_profile/init.sh
