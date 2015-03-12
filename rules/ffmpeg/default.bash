version=\
(
    "2.6"
)

url=\
(
    "http://ffmpeg.org/releases/ffmpeg-$version.tar.bz2"
)

md5=\
(
    '5bf6097833a3fea6a9e51b0a456c6922'
)

configure()
{
    ./configure \
        --sysroot="$cfg_dir_toolchain_sysroot" \
        --prefix="$cfg_dir_rootfs/usr" \
	--enable-cross-compile \
        --cross-prefix="$cfg_target_canonical-" \
        --target-os="linux" \
        --enable-shared \
	--disable-static \
	--enable-pic \
        --enable-gpl \
        --arch=$cfg_architecture
}

build()
{
    $cmd_make
}

target_install()
{
    $cmd_make \
        install
}
