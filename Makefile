TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DeviceInfoCC
DeviceInfoCC_BUNDLE_EXTENSION = bundle
DeviceInfoCC_FILES = DeviceInfoCC.m
DeviceInfoCC_CFLAGS = -fobjc-arc
DeviceInfoCC_FRAMEWORKS = UIKit
DeviceInfoCC_PRIVATE_FRAMEWORKS = ControlCenterUIKit
DeviceInfoCC_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
