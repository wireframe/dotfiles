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

echo 'SONNEK BOOM 🔥🔥🔥'
source /Users/ryansonnek/.betterup_profile/init.sh
if [ -f "/Users/ryansonnek/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/ryansonnek/.config/fabric/fabric-bootstrap.inc"; fi