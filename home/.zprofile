echo -n 'Loading zsh profile...'

# load all customizations from ~/.profile.d directory
if [ -d ~/.profile.d ]; then
    for i in ~/.profile.d/*.sh; do
        if [ -r $i ]; then
            echo -n .
            emulate sh -c 'source ${i}'
        fi
    done
    unset i
fi

echo 'SONNEK BOOM 🔥🔥🔥'
emulate sh -c 'source /Users/ryansonnek/.betterup_profile/init.sh'
