#set -x
echo 'Loading bash profile...'

# load all customizations from ~/.profile.d directory
if [ -d ~/.profile.d ]; then
  for i in ~/.profile.d/*.sh; do
    if [ -r $i ]; then
      echo "Loading ${i}..."
      source $i
    fi
  done
  unset i
fi

# load application configurations
if [ -d ~/.apps.d ]; then
  for f in ~/.apps.d/*.sh; do
    echo "Configuring ${f}..."
    source $f;
  done
fi

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

echo 'Profile loaded => SONNEK BOOM!'