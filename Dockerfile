FROM ubuntu:19.10
MAINTAINER lll9p laolilin.com <lll9p.china@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update  \
    && apt-get install -y locales curl wget \
    && apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

WORKDIR /home/build

ENV FORCE_UNSAFE_CONFIGURE=1

CMD ["/bin/bash"]
