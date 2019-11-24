LC_ALL=C pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5,"\t"name}' | sort -h > pkglist.txt
