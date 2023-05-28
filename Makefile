DEBUG = 0
FINALPACKAGE = 1

INSTALL_TARGET_PROCESSES = SpringBoard

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
ARCHS = arm64 arm64e
TARGET = iphone:16.2:15.0
else
ARCHS = armv7 arm64 arm64e
TARGET = iphone:12.1.2:9.0
endif

THEOS_DEVICE_IP = localhost -p 2222

TWEAK_NAME = NoUpdateMark9
NoUpdateMark9_FILES = Tweak.xm
NoUpdateMark9_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
