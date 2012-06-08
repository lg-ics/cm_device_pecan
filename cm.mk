# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/lge/pecan/pecan.mk)

PRODUCT_NAME := cm_pecan
PRODUCT_RELEASE_NAME := pecan

-include vendor/cm/config/common_versions.mk

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pecan

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pecan BUILD_ID=ITL41D BUILD_FINGERPRINT=lge/pecan/pecan:4.0.4/ITL41D/223971:user/test-keys