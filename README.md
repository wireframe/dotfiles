wireframe's OSX dotfiles
========

### Functionality
* environment initialization (ex: path, aliases)
* bash configuration (ex: prompt, autocompletion, etc)
* helpful scripts and commands (ex: git-cleanup.sh)
* OSX system default preferences
* VIM configuration
* Sublime Text configuration
* Git configuration (aliases, merge settings, etc)
* Ruby configuration (IRB, Rubygems, Rspec, etc)

### Pre-requisites
* install Xcode via App Store
* install [Xcode command line tools](http://stackoverflow.com/questions/8032824/cant-install-ruby-under-lion-with-rvm-gcc-issues)
* install [Homebrew](http://brew.sh/)
* install [RVM](http://rvm.io/)


### Installation using [Homesick](https://github.com/technicalpickles/homesick)

```
$ gem install homesick
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
