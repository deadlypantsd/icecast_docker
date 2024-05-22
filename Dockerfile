FROM	 archlinux:latest
MAINTAINER 	Dan Midthun <dan _DOT_ midthun _AT_ gmail _DOT_ com>

# Install things with updated repos
RUN	 pacman -Syu --noconfirm nano git binutils fakeroot make autoconf automake gcc debugedit

# Fix makepkg, Download icecast, fix PKGBUILD, install ... sheesh
RUN  sed -i '1229d' /usr/bin/makepkg
RUN git clone https://aur.archlinux.org/icecast.git
RUN sed -i '45i \ \ \ \ \ \ \ \ \ \ \ \ \ \ --disable-dependency-tracking \\' icecast/PKGBUILD
RUN (cd icecast && makepkg -i --noconfirm)

ADD .bashrc /root/.bashrc
