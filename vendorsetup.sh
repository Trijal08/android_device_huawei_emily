# Use BoardConfigKernel.mk from lineage-21.0
if wget "https://raw.githubusercontent.com/LineageOS/android_vendor_lineage/refs/heads/lineage-21.0/config/BoardConfigKernel.mk" -O $(realpath .)/vendor/lineage/config/BoardConfigKernel.mk; then
    echo "Successfully downgraded BoardConfigKernel.mk"
else
    echo "Downgrading BoardConfigKernel.mk failed, please downgrade it manually"
    exit 1
fi

# Patch host_init_verifier
if patch -N -p1 $(realpath .)/system/core/init/host_init_verifier.cpp < $(realpath .)/device/huawei/emily/prebuilts/0001-init_host_verifier-no-fail.patch || true; then
    echo "Patched host_init_verifier"
fi
