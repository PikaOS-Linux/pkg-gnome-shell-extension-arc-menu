DEBIAN_FRONTEND=noninteractive

# Clone Upstream
git clone -b v44.1 https://gitlab.com/arcmenu/ArcMenu ./gnome-shell-extension-arcmenu
cp -rvf ./debian ./gnome-shell-extension-arcmenu/
cd ./gnome-shell-extension-arcmenu

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -pv ./output
mv -v ./*.deb ./output/
