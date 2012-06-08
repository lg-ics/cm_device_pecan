# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

<<<<<<< HEAD
# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/pecan/pecan.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := pecan
PRODUCT_BRAND := lge
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_pecan \
    BUILD_FINGERPRINT="lge/pecan/pecan:2.3.7/GRI40/19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="pecan-user 2.3.7 GRI40 19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=




=======
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
>>>>>>> 4ff5c73325516d85975836cf35b5b2a4f26e5e46
