# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Libs
PRODUCT_PACKAGES += \
    libstagefrighthw \
    overlay.bcm21553 \
    lights.bcm21553

# Update utilities
PRODUCT_PACKAGES += \
    libOmxCore \
    SamsungServiceMode \
    libcopybit \
    toggleshutter \
    patchlcs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    Torch \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=20 \
    ro.telephony.ril_class=samsung \
    ro.telephony.sends_barcount=1 \
    mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
    persist.service.usb.setting=0 \
    dev.sfbootcomplete=0 \
    persist.sys.vold.switchexternal=1

# Configuration files for audio
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
    device/samsung/bcm21553-common/prebuilt/etc/init.d/10soundbooster:system/etc/init.d/10soundbooster
#    vendor/samsung/bcm21553-common/proprietary/system/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \

# Audio
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/etc/asound.conf:system/etc/asound.conf \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaudio.so:system/lib/libaudio.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaudio.so:obj/lib/libaudio.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/liblvvefs.so:system/lib/liblvvefs.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/lib_Samsung_Sound_Booster.so:system/lib/lib_Samsung_Sound_Booster.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libsamsungAcousticeq.so:system/lib/libsamsungAcousticeq.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/lib_Samsung_Acoustic_Module_Llite.so:system/lib/lib_Samsung_Acoustic_Module_Llite.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libsoundalive.so:system/lib/libsoundalive.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/lib_R2VS_ARM_GA_Library_for_EUROPA.so:system/lib/lib_R2VS_ARM_GA_Library_for_EUROPA.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libmedia.so:system/lib/libmedia.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaudioflinger.so:system/lib/libaudioflinger.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/samsung/bcm21553-common/proprietary/system/bin/mediaserver:system/bin/mediaserver \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libsisodrm.so:system/lib/libsisodrm.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomadrm.so:system/lib/libomadrm.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/librs_jni.so:system/lib/librs_jni.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libRS.so:system/lib/libRS.so
#    vendor/samsung/bcm21553-common/proprietary/system/lib/liblzo.so:system/lib/liblzo.so

# Apns config file
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Mediaplayer
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libBRCM_omx_core.so:system/lib/libBRCM_omx_core.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libBRCM_omx_core_plugin.so:system/lib/libBRCM_omx_core_plugin.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/invoke_mock_media_player.so:system/lib/invoke_mock_media_player.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_author.so:system/lib/libopencore_author.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_common.so:system/lib/libopencore_common.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_player.so:system/lib/libopencore_player.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libOpenSLES.so:system/lib/llibOpenSLES.so \

# Usb
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/etc/vold.fstab:system/etc/vold.fstab \
    vendor/samsung/bcm21553-common/proprietary/system/bin/vold:system/bin/vold \
    vendor/samsung/bcm21553-common/proprietary/system/bin/usb_portd:system/bin/usb_portd \
    vendor/samsung/bcm21553-common/proprietary/system/etc/usb_portd.conf:system/etc/usb_portd.conf \
    vendor/samsung/bcm21553-common/proprietary/system/etc/usb_tether.sh:system/etc/usb_tether.sh \
    vendor/samsung/bcm21553-common/proprietary/system/etc/usbconfig.sh:system/etc/usbconfig.sh \
    vendor/samsung/bcm21553-common/proprietary/system/etc/dbus.conf:system/etc/dbus.conf
#    vendor/samsung/bcm21553-common/proprietary/system/etc/usbmode.txt:system/etc/usbmode.txt \

# Camera
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libarccamera.so:system/lib/libarccamera.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libbrcmjpeg.so:system/lib/libbrcmjpeg.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libcamera.so:system/lib/libcamera.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libCaMotion.so:system/lib/libCaMotion.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libPanoraMax1.so:system/lib/libPanoraMax1.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libseccamera.so:system/lib/libseccamera.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libcamera_client.so:system/lib/libcamera_client.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libcameraservice.so:system/lib/libcameraservice.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libcaps.so:system/lib/libcaps.so

# Sensores
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/acoustics.default.so:system/lib/hw/acoustics.default.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/alsa.default.so:system/lib/hw/alsa.default.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/alsa.default.so:system/lib/hw/alsa.default.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/gps.bcm21553.so:system/lib/hw/gps.bcm21553.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/gps.goldfish.so:system/lib/hw/gps.goldfish.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/lights.bcm21553.so:system/lib/hw/lights.bcm21553.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/hw/sensors.goldfish.so:system/lib/hw/sensors.goldfish.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaccsensorcal.so:system/lib/libaccsensorcal.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libaccsensorcaltest.so:system/lib/libaccsensorcaltest.so
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libaccelcal.so:system/lib/libaccelcal.so \
#    vendor/samsung/bcm21553-common/proprietary/system/lib/libdhwr.so:system/lib/libdhwr.so 

# Keychars
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    vendor/samsung/bcm21553-common/proprietary/system/usr/keylayout/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf 


# GPS
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libsoc.so:system/lib/libsoc.so \
    vendor/samsung/bcm21553-common/proprietary/system/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
    vendor/samsung/bcm21553-common/proprietary/system/etc/gps/glconfig2075.xml:system/etc/gps/glconfig2075.xml \
    vendor/samsung/bcm21553-common/proprietary/system/etc/gps/glconfig4751.xml:system/etc/gps/glconfig4751.xml \
    vendor/samsung/bcm21553-common/proprietary/system/bin/glgps:system/bin/glgps \
    vendor/samsung/bcm21553-common/proprietary/system/bin/gps.cer:system/bin/gps.cer \
    vendor/samsung/bcm21553-common/proprietary/system/etc/gps.conf:system/etc/gps.conf

# Misc
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/bin/btld:system/bin/btld \
    vendor/samsung/bcm21553-common/proprietary/system/bin/mfgloader:system/bin/mfgloader \
    vendor/samsung/bcm21553-common/proprietary/system/bin/runSysCmd:system/bin/runSysCmd \
    vendor/samsung/bcm21553-common/proprietary/system/bin/usb_portd:system/bin/usb_portd \
    vendor/samsung/bcm21553-common/proprietary/system/bin/npsmobex:system/bin/npsmobex \
    vendor/samsung/bcm21553-common/proprietary/system/bin/memsicd:system/bin/memsicd 

# Wifi
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libnetutils.so:system/lib/libnetutils.so \
    device/samsung/bcm21553-common/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/bcm21553-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/bcm21553-common/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/bcm4330_aps.bin:system/etc/wifi/bcm4330_aps.bin \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/bcm4330_sta.bin:system/etc/wifi/bcm4330_sta.bin \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/RC_248_WPA.bin:system/etc/wifi/RC_248_WPA.bin \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/bcm4330_mfg.bin:system/etc/wifi/bcm4330_mfg.bin \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/nvram.txt:system/etc/wifi/nvram.txt \
    vendor/samsung/bcm21553-common/proprietary/system/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    vendor/samsung/bcm21553-common/proprietary/system/bin/BCM4330B1_002.001.003.0485.0506.hcd:system/bin/BCM4330B1_002.001.003.0485.0506.hcd 

# Ril
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libril.so:system/lib/libril.so \
    vendor/samsung/bcm21553-common/proprietary/system/bin/rild:system/bin/rild \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libbrcm_ril.so:system/lib/libbrcm_ril.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/liburilclient.so:system/lib/liburilclient.so \
    vendor/samsung/bcm21553-common/proprietary/system/lib/libbrcm_ril.so:system/lib/libreference-ril.so

# Drivers
PRODUCT_COPY_FILES += \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/bcm_headsetsw.ko:system/lib/modules/bcm_headsetsw.ko \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/brcm_switch.ko:system/lib/modules/brcm_switch.ko \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/gememalloc.ko:system/lib/modules/gememalloc.ko \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/h6270enc.ko:system/lib/modules/h6270enc.ko \
    vendor/samsung/bcm21553-common/proprietary/system/lib/modules/hx170dec.ko:system/lib/modules/hx170dec.ko 

# HGL
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/lib/egl/libGLES_hgl.so:system/lib/egl/libGLES_hgl.so \

# Gralloc
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/lib/hw/gralloc.bcm21553.so:system/lib/hw/gralloc.default.so 

# Enable if you build open Gralloc, then disable the prebuilt gralloc
#PRODUCT_PACKAGES += \
#    gralloc.bcm21553

# Media scanner apps
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/app/Gallery3D.apk:system/app/Gallery3D.apk \
    device/samsung/bcm21553-common/prebuilt/app/Music_2.apk:system/app/Music_2.apk \
    device/samsung/bcm21553-common/prebuilt/app/VideoPlayer.apk:system/app/VideoPlayer.apk \
    device/samsung/bcm21553-common/prebuilt/app/Camera.apk:system/app/Camera.apk \
    device/samsung/bcm21553-common/prebuilt/app/FileManager.apk:system/app/FileManager.apk \
#    device/samsung/bcm21553-common/prebuilt/app/MediaPlayer.apk:system/app/MediaPlayer.apk \

#Media Scanner libs
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/lib/libandless.so:system/lib/libandless.so \
    device/samsung/bcm21553-common/prebuilt/lib/libandroid-illusion.so:system/lib/libandroid-illusion.so  \
    device/samsung/bcm21553-common/prebuilt/lib/libatrack8.so:system/lib/libatrack8.so \
    device/samsung/bcm21553-common/prebuilt/lib/libatrack9.so:system/lib/libatrack9.so \
    device/samsung/bcm21553-common/prebuilt/lib/libavcodec.so:system/lib/libavcodec.so \
    device/samsung/bcm21553-common/prebuilt/lib/libavformat.so:system/lib/libavformat.so \
    device/samsung/bcm21553-common/prebuilt/lib/libavutil.so:system/lib/libavutil.so \
    device/samsung/bcm21553-common/prebuilt/lib/libft2.so:system/lib/libft2.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxass.so:system/lib/libmxass.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxsysdec.8.so:system/lib/libmxsysdec.8.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxsysdec.9.so:system/lib/libmxsysdec.9.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxsysdec.11.so:system/lib/libmxsysdec.11.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxsysdec.14.so:system/lib/libmxsysdec.14.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxutil.so:system/lib/libmxutil.so \
    device/samsung/bcm21553-common/prebuilt/lib/libmxvp.so:system/lib/libmxvp.so \
    device/samsung/bcm21553-common/prebuilt/lib/libplaceholder.so:system/lib/libplaceholder.so \
    device/samsung/bcm21553-common/prebuilt/lib/libqpicjni99.so:system/lib/libqpicjni99.so \
    device/samsung/bcm21553-common/prebuilt/lib/libswresample.so:system/lib/libswresample.so \
    device/samsung/bcm21553-common/prebuilt/lib/libswscale.so:system/lib/libswscale.so

# Enable Google-specific location features, like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1
