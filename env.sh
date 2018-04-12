# Setp up paths
export BASEDIR=$(pwd)/Entware
export STAGING_DIR=${BASEDIR}/staging_dir
export PREFIX=${STAGING_DIR}/toolchain-mipsel_mips32r2_gcc-7.3.0_glibc-2.27/bin/mipsel-openwrt-linux-

# MIPS cross-compile exports
export CC=${PREFIX}gcc
export CXX=${PREFIX}g++
export AR=${PREFIX}ar
export RANLIB=${PREFIX}ranlib
export LINK=$CXX
export CPP="${PREFIX}gcc -E"
export STRIP=${PREFIX}strip
export OBJCOPY=${PREFIX}objcopy
#export LD=${PREFIX}g++

# extras for convenience.
export OBJD=${PREFIX}objdump
export GDB=${PREFIX}gdb
export RDE=${PREFIX}readelf

export NM=${PREFIX}nm
export AS=${PREFIX}as
export PS1="[${PREFIX}] \w$ "
export LIBPATH=${STAGING_DIR}/toolchain-mipsel_mips32r2_gcc-7.3.0_glibc-2.27/lib/
export LDFLAGS='-Wl,-rpath-link '${LIBPATH}
export GYPFLAGS="-Dv8_use_mips_abi_hardfloat=false -Dv8_can_use_fpu_instructions=false"

# export V8SOURCE=${BASEDIR}/v8
# export TARGET_PATH=${BASEDIR}/linkit/opt
