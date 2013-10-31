if [ -d "/Applications/Sublime Text.app" ]; then
  # enable repeat key press
  defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false

  # create subl for CLI
  export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
  export EDITOR=subl

  # use custom preferences
  ln -fs ~/.sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings
fi