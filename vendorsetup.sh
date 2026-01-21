# Symlink ld.bfd to ld.lld
if ln -sf ../../../../../gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-ld.bfd $(realpath .)/prebuilts/clang/kernel/linux-x86/clang-r416183b/bin/ld.lld; then
    echo "Successfully symlinked ld.bfd to ld.lld"
else
    echo "Symlinking ld.bfd to ld.lld was unsuccessful, please apply manually"
    exit 1
fi

# Patch host_init_verifier
if patch -N -p1 $(realpath .)/system/core/init/host_init_verifier.cpp < $(realpath .)/device/huawei/emily/prebuilts/0001-init_host_verifier-no-fail.patch || true; then
    echo "Patched host_init_verifier"
fi
