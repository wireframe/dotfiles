# wireframe's OSX dotfiles

dotfiles managed by [Homesick](https://github.com/technicalpickles/homesick)

## Functionality
* environment initialization (ex: path, aliases)
* bash configuration (ex: prompt, autocompletion, etc)
* helpful scripts and commands (ex: git-cleanup.sh)
* VIM configuration
* Git configuration (aliases, merge settings, etc)
* Ruby configuration (IRB, Rubygems, Rspec, etc)

## Setup
Provision machine with OSX-Bootstrap project

## Alfred configuration
1. Turn off OSX spotlight
2. Map Alfred to CMD+SPACE
3. Setup Alfred sync directory to `~/.alfred.d`

## Manual installation

```bash
$ gem install homesick
$ homesick clone wireframe/dotfiles
$ homesick symlink dotfiles
$ homesick rc dotfiles
```
