wireframe's OSX dotfiles
========

## Functionality
* environment initialization (ex: path, aliases)
* bash configuration (ex: prompt, autocompletion, etc)
* helpful scripts and commands (ex: git-cleanup.sh)
* VIM configuration
* Git configuration (aliases, merge settings, etc)
* Ruby configuration (IRB, Rubygems, Rspec, etc)

## Setup
Provision machine with OSX-Bootstrap project

## Manual Installation
using [Homesick](https://github.com/technicalpickles/homesick)

```bash
$ gem install homesick
$ homesick clone wireframe/dotfiles
$ homesick symlink dotfiles
$ homesick rc dotfiles
```
