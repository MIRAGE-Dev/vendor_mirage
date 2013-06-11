# KoreanIME
PRODUCT_COPY_FILES += \
    vendor/mirage/proprietary/KoreanIME/GoogleKoreanIME.apk:system/app/GoogleKoreanIME.apk \
    vendor/mirage/proprietary/KoreanIME/libjni_koreanime.so:system/lib/libjni_koreanime.so

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    persist.sys.root_access=3

# Extra tools
PRODUCT_PACKAGES += \
    ash \
    bash \
    e2fsck \
    tune2fs

# Extra Optional packages
PRODUCT_PACKAGES += \
    Trebuchet \
    Apollo \
    DSPManager \
    HALO \
    libcyanogen-dsp \
    audio_effects.conf
