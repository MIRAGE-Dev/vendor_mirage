PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=yyyy-MM-dd \
    ro.com.android.dataroaming=false

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/mirage/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/mirage/prebuilt/common/bin/50-slim.sh:system/addon.d/50-slim.sh

# SLIM-specific init file
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/init.local.rc:root/init.slim.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/mirage/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Audio Config for DSPManager
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Bring in media files
PRODUCT_COPY_FILES +=  \
    vendor/mirage/prebuilt/common/media/audio/alarms/Alarm_Classic.ogg:system/media/audio/alarms/Alarm_Classic.ogg \
    vendor/mirage/prebuilt/common/media/audio/alarms/Alarm_Rooster_02.ogg:system/media/audio/alarms/Alarm_Rooster_02.ogg \
    vendor/mirage/prebuilt/common/media/audio/alarms/Cesium.ogg:system/media/audio/alarms/Cesium.ogg \
    vendor/mirage/prebuilt/common/media/audio/alarms/Alarm_Beep_02.ogg:system/media/audio/alarms/Alarm_Beep_02.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/NewPlayer.ogg:system/media/audio/ringtones/NewPlayer.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Ring_Digital_02.ogg:system/media/audio/ringtones/Ring_Digital.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Playa.ogg:system/media/audio/ringtones/Playa.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Vespa.ogg:system/media/audio/ringtones/Vespa.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/hydra.ogg:system/media/audio/ringtones/hydra.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Aquila.ogg:system/media/audio/ringtones/Aquila.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/World.ogg:system/media/audio/ringtones/World.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/InsertCoin.ogg:system/media/audio/ringtones/InsertCoin.ogg \
    vendor/mirage/prebuilt/common/media/audio/ringtones/Carina.ogg:system/media/audio/ringtones/Carina.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Antares.ogg:system/media/audio/notifications/Antares.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Doink.ogg:system/media/audio/notifications/Doink.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/arcturus.ogg:system/media/audio/notifications/arcturus.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Plastic_Pipe.ogg:system/media/audio/notifications/Plastic_Pipe.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Procyon.ogg:system/media/audio/notifications/Procyon.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/pixiedust.ogg:system/media/audio/notifications/pixiedust.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/DontPanic.ogg:system/media/audio/notifications/DontPanic.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Palladium.ogg:system/media/audio/notifications/Palladium.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/tweeters.ogg:system/media/audio/notifications/tweeters.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Cricket.ogg:system/media/audio/notifications/Cricket.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Altair.ogg:system/media/audio/notifications/Altair.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Helium.ogg:system/media/audio/notifications/Helium.ogg \
    vendor/mirage/prebuilt/common/media/audio/notifications/Aldebaran.ogg:system/media/audio/notifications/Aldebaran.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/mirage/prebuilt/common/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg
#LOCAL SLIM CHANGES  - END

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/mkshrc:system/etc/mkshrc

PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/bin/sysrw:system/bin/sysrw \
    vendor/mirage/prebuilt/common/bin/sysro:system/bin/sysro \
    vendor/mirage/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/mirage/prebuilt/common/etc/init.d/00slim:system/etc/init.d/00slim \
    vendor/mirage/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/mirage/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/mirage/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/mirage/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/mirage/prebuilt/common/bin/sysinit:system/bin/sysinit

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
    SlimCenter \
    Velvet \
    LatinIME

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_PACKAGE_OVERLAYS += vendor/mirage/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/mirage/overlay/common

# T-Mobile theme engine
include vendor/mirage/config/themes_common.mk

# Versioning System
# Reopen for 4.2.2.build.4.1
PRODUCT_VERSION_MAJOR = 4.2.2
PRODUCT_VERSION_MINOR = build
PRODUCT_VERSION_MAINTENANCE = 4.1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(BUILD_ID)

PRODUCT_PROPERTY_OVERRIDES += \
    slim.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)

ifdef SLIM_NIGHTLY
    SLIM_VERSION := Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-NIGHTLY-$(shell date +"%Y%m%d-%H%M")
    SLIM_MOD_VERSION := Slim-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-NIGHTLY-$(shell date +"%Y%m%d-%H%M")
else
ifdef SLIM_RELEASE
        SLIM_VERSION := Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-OFFICIAL
        SLIM_MOD_VERSION := Slim-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-OFFICIAL
else
        SLIM_VERSION := Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-UNOFFICIAL-$(shell date +"%Y%m%d-%H%M")
        SLIM_MOD_VERSION := Slim-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-UNOFFICIAL-$(shell date +"%Y%m%d-%H%M")
endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.slim.version=$(SLIM_VERSION) \
    ro.modversion=$(SLIM_MOD_VERSION)

include vendor/mirage/config/mirage.mk
