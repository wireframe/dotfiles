wireframe's OSX dotfiles
========

### Functionality
* bash configuration
* environment initialization (ex: path)
* VIM configuration
* Sublime Text Configuration


### Pre-requisites
* install Xcode via App Store
* install [Xcode command line tools](http://stackoverflow.com/questions/8032824/cant-install-ruby-under-lion-with-rvm-gcc-issues)
* install [Homebrew](http://brew.sh/)
* install [RVM](http://rvm.io/)


### Installation using [Homesick](https://github.com/technicalpickles/homesick)

```
$ homesick clone wireframe/dotfiles
$ homesick symlink wireframe/dotfiles
```

### (optional) VIM configuration
```
# install VIM via homebrew
brew install macvim --override-system-vim

# install VIM Vundle plugin
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
$ vim +BundleInstall +qall
```

### (optional) Sublime Text Configuration
The dotfiles Sublime Text configuration depend on installing [Sublime Text](http://www.sublimetext.com/) 
plus [Package Control](http://wbond.net/sublime_packages/package_control) and then installing the Soda theme
via Package Control
