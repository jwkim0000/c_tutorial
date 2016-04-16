#!/bin/sh

my_workspace="temp_workspace_for_build"
pkg_dir="hello-rpm"
pkg_zip="hello-rpm-0.1.tar.gz"

font_="\033[32m"
_font="\033[0m"

echo $font_'1. Init workspace'$_font
rm -rf $my_workspace
mkdir -p $my_workspace
cp -a $pkg_dir $my_workspace/$pkg_dir
cd $my_workspace

if [ ! -d "~/rpmbuild" ]; then
	echo $font_'1-2. rpm workspace not exist'$_font
	rpmbuild -ba $pkg_dir/packaging/hello-rpm.spec || true
fi

echo $font_'2. zip the package dir and move to rpm source diretory'$_font
tar zcvf $pkg_zip $pkg_dir
mv $pkg_zip ~/rpmbuild/SOURCES

cd $pkg_dir
echo $font_'3. build start'$_font
rpmbuild -ba packaging/hello-rpm.spec || true
cd ../..

echo $font_'4. Clean workspace'$_font
rm -rf $my_workspace

