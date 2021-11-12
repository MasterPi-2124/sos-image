FROM scratch

# Add the image file at ./ArchLinuxARM-rpi-4-latest.tar.gz
ADD rpi/lite/ArchLinuxARM-rpi-4-latest.tar.gz /

# Set up pacman
RUN pacman-key --init && \
    pacman-key --populate archlinuxarm && \
    pacman-db-upgrade && \
    pacman -R --noconfirm openssh linux-aarch64 uboot-raspberrypi && \
    pacman -Syyu wget curl git go sudo docker btop nethogs lsof bash-completion ca-certificates archlinux-keyring

# Set System Locale, set build config, get rid of the builduser
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
		 locale-gen && \
		 sed -i -e "s/^#MAKEFLAGS=.*/MAKEFLAGS=-j5/g" /etc/makepkg.conf
		 
ENV LC_ALL en_US.UTF-8

