if [ -d "/Applications/Sublime Text 2.app" ]; then
  # enable repeat key press
  defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false

  # setup subl for CLI
  export PATH="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin:$PATH"
  export EDITOR=subl

  # use custom preferences
  ln -fs ~/.sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
fi
