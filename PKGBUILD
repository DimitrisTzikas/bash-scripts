# Maintainer: Dimitris Tzikas <dimitristzikas@protonmail.com>
pkgname=bash-scripts
pkgver=20202303
pkgrel=1
pkgdesc="Bash scripts"
arch=('any')
url="https://github.com/DimitrisTzikas/bash-scripts"
license=('GPL')
depends=(
    'dmenu'
    'nmap'
    'aircrack-ng'
    'awk'
    'grep'
    'sudo'
    'net-tools'
    'curl'
    'iptables'
    'xorg-xmodmap'
    'i3lock'
    'mplayer'
    'scrot'
    'imagemagick'
    'alsa-utils'
    'alsa-plugins'
)
source=("git://github.com/DimitrisTzikas/bash-scripts.git#branch=master")
md5sums=('SKIP')

build() {
    echo "Nothing to build"
}

package() {
    install -d "${pkgdir}/usr/local/bin/"
    cd "${srcdir}/bash-scripts"
    for file in *; do
	if echo "$file" | grep ".conf >/dev/null"; then
	    install -m644 "${srcdir}/bash-scripts/$file" "${pkgdir}/etc/"
	elif [[ $file != "LICENSE" ]]; then
	    install -m755 "${srcdir}/bash-scripts/$file" "${pkgdir}/usr/local/bin/"
	fi
    done
}
