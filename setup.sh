#!/bin/bash

USERNAME="zitaoliu"
PKG_DIR="/Users/$USERNAME/Library/Application Support/Sublime Text 3/Packages/"

# install the package control
# use package control to install LaTeXing
# type ". setup.sh" to run this script

#ln -si "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl2
ln -si "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


###############################################################################
# setup sublime personal configuration
###############################################################################

cp "Default\ (OSX).sublime-keymap" "$PKG_DIR/User/"
cp "Preferences.sublime-settings" "$PKG_DIR/User/"

###############################################################################
# install sublime packages
###############################################################################

git clone https://github.com/skuroda/Sublime-AdvancedNewFile.git "$PKG_DIR"
git clone https://github.com/spadgos/sublime-jsdocs.git "$PKG_DIR"
git clone https://github.com/condemil/Gist.git "$PKG_DIR"
git clone https://github.com/titoBouzout/SideBarEnhancements.git "$PKG_DIR"
git clone https://github.com/SublimeText/Origami.git "$PKG_DIR"
git clone https://github.com/SublimeLinter/SublimeLinter3.git "$PKG_DIR"
git clone https://github.com/guillermooo/Vintageous.git "$PKG_DIR"

###############################################################################
# copy sublime snippets and custom build
###############################################################################

cp -r snippets "$PKG_DIR/User/"
cp -r build "$PKG_DIR/User/"





