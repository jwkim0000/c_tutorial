#!/bin/sh

my_workspace="temp_workspace_for_build"
pkg_dir="hello-cmake-0.1"

font_="\033[32m"
_font="\033[0m"

echo $font_'1. Init workspace'$_font
rm -rf $my_workspace
mkdir -p $my_workspace
cp -a $pkg_dir $my_workspace/$pkg_dir
cd $my_workspace

cd $pkg_dir
echo $font_'2. cmake start'$_font
cmake . -DFONT_COLOR="RED"

echo $font_'3. build start (using "make")'$_font
make

echo $font_
echo '============================================'
echo '** You can install using "make" operation **'
echo '** The operation must be done in ./'$my_workspace'/'$pkg_dir
echo '** - install : sudo make install          **'
echo '** But you should uninstall manually      **'
echo '** - uninstall : sudo rm /usr/bin/hello-cmake /usr/bin/hello-configure'
echo '** please remove workspace directory : ./'$my_workspace
echo '============================================'
echo $_font
