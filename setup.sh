#!/bin/bash

USERNAME="zitaoliu"
PKG_DIR="/Users/$USERNAME/Library/Application Support/Sublime Text 3/Packages"

# install the package control
# type ". setup.sh" to run this script
# for c++ project, install cpplint: pip install cpplint

ln -si "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


###############################################################################
# setup sublime personal configuration
###############################################################################

cp "Default (OSX).sublime-keymap" "$PKG_DIR/User/"
cp "Preferences.sublime-settings" "$PKG_DIR/User/"

###############################################################################
# install sublime packages
###############################################################################

git clone https://github.com/skuroda/Sublime-AdvancedNewFile.git "$PKG_DIR/Sublime-AdvancedNewFile"
git clone https://github.com/spadgos/sublime-jsdocs.git "$PKG_DIR/sublime-jsdocs"
git clone https://github.com/condemil/Gist.git "$PKG_DIR/Gist"
git clone https://github.com/titoBouzout/SideBarEnhancements.git "$PKG_DIR/SideBarEnhancements"
git clone https://github.com/SublimeText/Origami.git "$PKG_DIR/Origami"
git clone https://github.com/SublimeLinter/SublimeLinter.git "$PKG_DIR/SublimeLinter"
git clone https://github.com/guillermooo/Vintageous.git "$PKG_DIR/Vintageous"
git clone https://github.com/LaTeXing/LaTeXing.git "$PKG_DIR/LaTexing"

###############################################################################
# copy sublime snippets and custom build
###############################################################################

cp -r snippets "$PKG_DIR/User/"
cp -r build "$PKG_DIR/User/"





