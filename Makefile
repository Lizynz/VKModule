export ARCHS = arm64 arm64e
DEBUG = 0
export TARGET = iphone:clang:14.2
GO_EASY_ON_ME = 1

PACKAGE_VERSION = 1.0-3

export SYSROOT = $(THEOS)/sdks/iPhoneOS14.2.sdk

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VKModule
VKModule_FILES = $(wildcard *.m)
VKModule_CFLAGS +=  -fobjc-arc -I$(THEOS_PROJECT_DIR)/headers
VKModule_LDFLAGS += $(THEOS_PROJECT_DIR)/Frameworks/ControlCenterUIKit.tbd
VKModule_FRAMEWORKS += UIKit
VKModule_INSTALL_PATH = /Library/ControlCenter/Bundles

include $(THEOS_MAKE_PATH)/bundle.mk
