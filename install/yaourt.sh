###---Install yaourt, AUR client---###
# Move into the home directory first
cd ~/
# Make sure the standard repositories are up-to-date for anything that package-query or yaourt might need
pacman -Sy
# Pull the package-query package, a frontend to pacman's database and adds suport for AUR
git clone https://aur.archlinux.org/package-query.git && cd package-query
# Make the package. The -s flag syncs the plackage's standard repository dependencies (if it has any) with pacman before trying to build the package
makepkg -si && cd ..
# Pull the yaourt package
git clone https://aur.archlinux.org/yaourt.git && cd yaourt
# Make the package
makepkg -si && cd ..

