export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:13.7:13.0

export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AnyKeyTrackpad
AnyKeyTrackpad_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences MobileNotes"
