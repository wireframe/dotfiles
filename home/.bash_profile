#set -x
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

# load OSX customizations
if [[ "$OSTYPE" == "darwin"* ]]; then
  if [ -d ~/.osx.d ]; then
    for f in ~/.osx.d/*.sh; do
      echo -n .
      source $f;
    done
  fi
fi

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

echo 'SONNEK BOOM 🔥🔥🔥'
