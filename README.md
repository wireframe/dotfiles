wireframe's OSX dotfiles
========

### Installation
using [Homesick](https://github.com/technicalpickles/homesick)

```
$ homesick clone wireframe/dotfiles
$ homesick symlink wireframe/dotfiles

# install VIM Vundle plugin
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
$ vim +BundleInstall +qall
```

### Functionality
* bash configuration
* environment initialization (ex: path)
* VIM configuration
* Sublime Text Configuration