# KoreanIME
PRODUCT_COPY_FILES += \
    vendor/mirage/proprietary/KoreanIME/GoogleKoreanIME.apk:system/app/GoogleKoreanIME.apk \
    vendor/mirage/proprietary/KoreanIME/libjni_koreanime.so:system/lib/libjni_koreanime.so

# RoundR
PRODUCT_COPY_FILES += \
    vendor/mirage/proprietary/RoundR/RoundR.apk:system/app/RoundR.apk

# Stuff For AK
PRODUCT_COPY_FILES += \
    vendor/mirage/proprietary/tuna/data/ak/create_bugreport.sh:data/ak/create_bugreport.sh \
    vendor/mirage/proprietary/tuna/data/ak/create_bugreport_delayed.sh:data/ak/create_bugreport_delayed.sh \
    vendor/mirage/proprietary/tuna/data/ak/frandom_test.sh:data/ak/frandom_test.sh \
    vendor/mirage/proprietary/tuna/data/ak/proc_cpu_percent.sh:data/ak/proc_cpu_percent.sh \
    vendor/mirage/proprietary/tuna/data/ak/recovery_wpa_hostapd.sh:data/ak/recovery_wpa_hostapd.sh \
    vendor/mirage/proprietary/tuna/data/ak/restart_systemui.sh:data/ak/restart_systemui.sh \
    vendor/mirage/proprietary/tuna/data/ak/backup/hostapd:data/ak/backup/hostapd \
    vendor/mirage/proprietary/tuna/data/ak/backup/set_sysctl:data/ak/backup/set_sysctl \
    vendor/mirage/proprietary/tuna/data/ak/backup/sysctl.conf:data/ak/backup/sysctl.conf \
    vendor/mirage/proprietary/tuna/data/ak/backup/zipalign:data/ak/backup/zipalign \
    vendor/mirage/proprietary/tuna/data/ak/backup/zram:data/ak/backup/zram \
    vendor/mirage/proprietary/tuna/data/ak/init.d/44fq_codel:data/ak/init.d/44fq_codel \
    vendor/mirage/proprietary/tuna/data/ak/init.d/55frandom:data/ak/init.d/55frandom

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    debug.composition.type=gpu \
    debug.performance.tuning=1 \
    pm.sleep_mode=1 \
    video.accelerate.hw=1 \
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
    libcyanogen-dsp \
    audio_effects.conf
