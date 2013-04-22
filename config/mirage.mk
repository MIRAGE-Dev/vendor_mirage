# KoreanIME
PRODUCT_COPY_FILES += \
    vendor/mirage/proprietary/KoreanIME/GoogleKoreanIME.apk:system/app/GoogleKoreanIME.apk \
    vendor/mirage/proprietary/KoreanIME/libjni_koreanime.so:system/lib/libjni_koreanime.so

MIRAGE_VERSION_MAJOR = 4.2.2
MIRAGE_VERSION_MINOR = FREEZE
MIRAGE_VERSION_MAINTENANCE = 1.4

export TARGET_USE_O3=true
MIRAGE_VERSION := MIRAGE-$(PRODUCT_RELEASE_NAME)-$(MIRAGE_VERSION_MAJOR)-$(MIRAGE_VERSION_MINOR)-v$(MIRAGE_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.miracle.version=MIRAGE-$(PRODUCT_RELEASE_NAME)-$(MIRAGE_VERSION_MAJOR)-$(MIRAGE_VERSION_MINOR)-v$(MIRAGE_VERSION_MAINTENANCE) \
    ro.mirage.version=MIRAGE-v$(MIRAGE_VERSION_MAINTENANCE)-$(MIRAGE_VERSION_MINOR) \
    debug.composition.type=gpu \
    debug.sf.hw=1 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    persist.sys.root_access=3

# Extra Optional packages
PRODUCT_PACKAGES += \
    Trebuchet \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

