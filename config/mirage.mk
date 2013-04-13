# KoreanIME
PRODUCT_COPY_FILES += \
    vendor/slim/proprietary/KoreanIME/GoogleKoreanIME.apk:system/app/GoogleKoreanIME.apk \
    vendor/slim/proprietary/KoreanIME/libjni_koreanime.so:system/lib/libjni_koreanime.so

PRODUCT_VERSION_MAJOR = 4.2.2
PRODUCT_VERSION_MINOR = STABLE
PRODUCT_VERSION_MAINTENANCE = 1.2

PRODUCT_PROPERTY_OVERRIDES += \
    ro.miracle.version=MIRAGE-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).v$(PRODUCT_VERSION_MAINTENANCE) \
    ro.mirage.version=MIRAGE-v$(PRODUCT_VERSION_MAINTENANCE)-$(PRODUCT_VERSION_MINOR) \
    debug.composition.type=gpu \
    debug.sf.hw=1 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    persist.sys.root_access=3

