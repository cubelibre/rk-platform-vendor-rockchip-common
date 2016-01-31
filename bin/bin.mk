ifeq ($(strip $(TARGET_ARCH)), arm)

PRODUCT_PACKAGES += \
    mkdosfs         \
    sdtool          \
    b2linux

endif

ifeq ($(strip $(TARGET_ARCH)), arm64)

PRODUCT_PACKAGES += \
    mkdosfs         \
    sdtool          \
    b2linux

endif

ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
	busybox
endif
