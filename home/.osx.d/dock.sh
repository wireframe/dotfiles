# Exec this file to set many helpful defaults in OS X
# Most of this came from https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# see https://gist.github.com/brandonb927/3195465

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# enable OSX Yosemite Dark theme
defaults write ~/Library/Preferences/.GlobalPreferences AppleInterfaceStyle Dark

# set desktop background
sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Solid Colors/Solid Gray Pro Dark.png"
