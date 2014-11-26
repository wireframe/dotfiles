VUNDLE_PATH=~/.vim/bundle/vundle
if [ ! -d $VUNDLE_PATH ]; then
  echo -n '.'
  git clone https://github.com/gmarik/vundle.git $VUNDLE_PATH
  vim +PluginInstall +qall
fi
