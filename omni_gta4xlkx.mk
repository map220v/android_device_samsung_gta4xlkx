# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta4xlkx
PRODUCT_NAME := omni_gta4xlkx
PRODUCT_MODEL := Galaxy Tab S6 Lite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/samsung/gta4xlkx/prebuilt/root,root)
