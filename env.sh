export API=30
export NDK_VERSION=22.1.7171670

export TARGET=armv7a-linux-androideabi
ABI=arm-linux-androideabi
# export TARGET=aarch64-linux-android
# ABI=$TARGET

export os=$(uname -s | awk '{ print tolower($0) }')
export NDK=$HOME/Library/Android/sdk/ndk/$NDK_VERSION
export ANDROID_NDK_HOME=$NDK
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/$os-x86_64

export AR=$TOOLCHAIN/bin/llvm-ar
export AS=$TOOLCHAIN/bin/$TARGET-as
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
export LD=$TOOLCHAIN/bin/$TARGET-ld
export RANLIB=$TOOLCHAIN/bin/$ABI-ranlib
export STRIP=$TOOLCHAIN/bin/$ABI-strip
export PATH=$TOOLCHAIN/bin:$PATH
