PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false

# Back-up Tool
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/mirage/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/mirage/prebuilt/common/bin/50-mirage.sh:system/addon.d/50-mirage.sh

# MIRAGE-specific init file
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/init.mirage.rc:root/init.mirage.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/mirage/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Common Audio mk
include vendor/mirage/config/audio_common.mk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Tweaks
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/sysrw:system/bin/sysrw \
    vendor/mirage/prebuilt/common/bin/sysro:system/bin/sysro \
    vendor/mirage/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/init.d/00mirage:system/etc/init.d/00mirage \
    vendor/mirage/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/mirage/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/mirage/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/mirage/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/mirage/prebuilt/common/bin/sysinit:system/bin/sysinit

# Cron fucks
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/mirage/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/mirage/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/mirage/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/mirage/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/mirage/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/mirage/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Embed SuperUser
SUPERUSER_EMBEDDED := true

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    SpareParts \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    HoloSpiralWallpaper \
    NoiseField \
    Galaxy4 \
    LiveWallpapersPicker \
    PhaseBeam

# Extra Optional packages
PRODUCT_PACKAGES += \
    DashClock \
    CMFileManager \
    LatinIME

PRODUCT_PACKAGE_OVERLAYS += vendor/mirage/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/mirage/overlay/common

# T-Mobile theme engine
include vendor/mirage/config/themes_common.mk

# Versioning System
include vendor/mirage/config/version.mk

# General mk
include vendor/mirage/config/mirage.mk

# Custom audio engine By VanirTeam
#include vendor/mirage/config/mirage_audio.mk

# Slim GAPPS
include vendor/mirage/config/gapps.mk
