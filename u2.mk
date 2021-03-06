#
# Copyright (C) 2017 LineageOS Project
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

# Common QCOM configuration tools
$(call inherit-product, device/qcom/common/Android.mk)
$(call inherit-product, vendor/qcom/binaries/msm8974/graphics/graphics-vendor.mk)

# TWRP
PRODUCT_COPY_FILES += \
    device/iuni/u2/rootdir/init.qcom.usb.rc:recovery/root/init.usb.rc \
    device/iuni/u2/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab 

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# u2 Init files
PRODUCT_COPY_FILES += \
    device/iuni/u2/rootdir/init.rc:root/init.rc \
    device/iuni/u2/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/iuni/u2/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/iuni/u2/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/iuni/u2/rootdir/fstab.qcom:root/fstab.qcom \
    device/iuni/u2/rootdir/init.class_main.sh:root/init.class_main.sh \
    device/iuni/u2/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# system/etc files
PRODUCT_COPY_FILES += \
    device/iuni/u2/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/iuni/u2/rootdir/etc/set_baseband.sh:system/etc/set_baseband.sh \
    device/iuni/u2/rootdir/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/iuni/u2/media_codecs.xml:system/etc/media_codecs.xml \
    device/iuni/u2/media_profiles.xml:system/etc/media_profiles.xml \
    device/iuni/u2/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# Config files for touch and input
PRODUCT_COPY_FILES += \
    device/iuni/u2/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/iuni/u2/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/iuni/u2/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# WiFi
PRODUCT_COPY_FILES += \
    device/iuni/u2/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/iuni/u2/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/iuni/u2/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
    device/iuni/u2/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

PRODUCT_TAGS += dalvik.gc.type-precise

DEVICE_PACKAGE_OVERLAYS := \
    device/iuni/u2/overlay

# Camera
PRODUCT_PACKAGES += \
    Snap \
    camera.u2 \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    mm-jpeg-interface-test \
    mm-qcamera-app
    
# Jelly package
PRODUCT_PACKAGES += \
    Jelly

# Charging Mode
PRODUCT_PACKAGES += \
    charger_res_images

# Data
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libxml2 \
    librmnetctl

PRODUCT_PACKAGES += \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

# Widevine
PRODUCT_PACKAGES += \
    libshim_wvm
    
PRODUCT_PACKAGES += \
    hostapd \
    wcnss_service \
    wpa_supplicant
    
# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    libbson \
    libnl_2 \
    ethertypes

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay \
    keystore.msm8974

PRODUCT_PACKAGES += \
    libstlport

# Lights
PRODUCT_PACKAGES += \
    lights.u2

PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# for audio.primary.msm8974
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    tinymix \
    tinyplay \
    tinycap \
    tinypcminfo \
    libtinyxml \
    libtinyxml2

# Media & Audio
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw 

# sensors
PRODUCT_COPY_FILES += \
    device/iuni/u2/sensor/sap.conf:system/etc/sap.conf \
    device/iuni/u2/sensor/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# MSM IPC Router security configuration
PRODUCT_COPY_FILES += \
    device/iuni/u2/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    device/iuni/u2/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/iuni/u2/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/iuni/u2/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/iuni/u2/audio/mixer_paths_auxpcm.xml:system/etc/mixer_paths_auxpcm.xml
    
# GPS configuration
PRODUCT_COPY_FILES += \
    device/iuni/u2/gps.conf:system/etc/gps.conf
    
# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    com.android.nfc_extras \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag
 
 PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    device/iuni/u2/nfc-nci.conf:system/etc/nfc-nci.conf \
    device/iuni/u2/libnfc-brcm.conf:system/etc/nfc-nci.conf:system/etc/nfc-nci.conf-brcm.conf \
    device/iuni/u2/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf \
    device/iuni/u2/nfcee_access.xml:system/etc/nfcee_access.xml

# bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
     bluetooth.hfp.client=1 \
     qcom.bluetooth.soc=smd \
     ro.bluetooth.hfp.ver=1.7 \
     ro.qualcomm.bt.hci_transport=smd \
     ro.bluetooth.dun=false \
     ro.bluetooth.sap=false \
     ro.qualcomm.bluetooth.ftp=true \
     ro.qualcomm.bluetooth.hfp=true \
     ro.qualcomm.bluetooth.hsp=true \
     ro.qualcomm.bluetooth.map=true \
     ro.qualcomm.bluetooth.nap=true \
     ro.qualcomm.bluetooth.opp=true \
     ro.qualcomm.bluetooth.pbap=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608 \
    persist.hwc.mdpcomp.enable=true

# QMI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    ro.use_data_netmgrd=true \
    ro.telephony.default_network=0 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    ro.telephony.call_ring.multiple=0 \
    ro.qualcomm.cabl=1 \
    hw.cabl.level=Auto

#For internal sdcard
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vold.primary_physical=1
    
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# qcom
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    camera2.portability.force_api=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \
    persist.camera.cpp.duplication=false

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.audience=true \
    persist.audio.fluence.voicecall=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    use.voice.path.for.pcm.voip=true \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.multiple.enabled=false

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so

# gps
#system prop for switching gps driver to qmi
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=true
    
# Cell Broadcasts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cellbroadcast.emergencyids=0-65534

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    ro.sf.lcd_density=480 \
    ro.com.google.networklocation=1 \
    ro.com.google.locationfeatures=1 \
    pm.sleep_mode=1 \
    persist.sys.strictmode.disable=true \
    persist.sys.strictmode.visual=0 \
    persist.timed.enable=true \
    ro.data.large_tcp_window_size=true \
    persist.fuse_sdcard=true \
    ro.com.android.mobiledata=true \
    ro.regionalization.support=yes \
    telephony.lteOnCdmaDevice=1 \
    ro.product.first_api_level=19 \
    persist.demo.hdmirotationlock=false \
    ro.com.google.gmsversion=7.1_r7 \
    ro.com.google.clientidbase=android-iuni \
    ro.com.google.clientidbase.ms=android-iuni \
    ro.com.google.clientidbase.am=android-iuni \
    ro.com.google.clientidbase.gmm=android-iuni \
    ro.com.google.clientidbase.yt=android-iuni \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0
