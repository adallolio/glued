version=\
(
    'v05.00.00.01'
)

url=\
(
    'git@github.com:beagleboard/am33x-cm3.git'
)

maintainer=\
(
    'Ricardo Martins <rasm@fe.up.pt>'
)

download()
{
    git clone "$url" "$cfg_dir_builds/$pkg/$pkg-$version"
}

host_install()
{
    $cmd_mkdir "$cfg_dir_toolchain/firmware"
    cp -v "bin/am335x-pm-firmware.bin" "$cfg_dir_toolchain/firmware"
}
