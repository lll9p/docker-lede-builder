# docker-lede-builder
build openwrt


docker run --rm -it -v $(pwd)/data/docker:/home/build lll9p/docker-lede-builder


git clone https://github.com/coolsnowwolf/lede


./scripts/feeds update -a && ./scripts/feeds install -a


make defconfig


make menuconfig


make download


make V=s
