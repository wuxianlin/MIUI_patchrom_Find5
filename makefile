#
# Makefile for Find5
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_Find5.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-priv-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-removed-priv-apps := MediaProvider

local-miui-modified-apps := Phone MiuiHome Settings TelephonyProvider

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   := 

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo Update boot.img
	cp other/boot.img $(ZIP_DIR)/boot.img
	
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo Replace app and priv-app
	cp other/app/* $(ZIP_DIR)/system/app/
	cp other/priv-app/* $(ZIP_DIR)/system/priv-app/

	@echo Replace custom lib
	cp -rf other/lib/* $(ZIP_DIR)/system/lib/

	@echo Replace custom bin
	cp other/bin/* $(ZIP_DIR)/system/bin/

	@echo Replace custom etc
	cp other/etc/* $(ZIP_DIR)/system/etc/

	@echo Replace custom xbin
	cp other/xbin/* $(ZIP_DIR)/system/xbin/

	@echo Replace custom vendor
	cp -rf other/vendor/* $(ZIP_DIR)/system/vendor/

	@echo Delete some unneeded files
	rm -rf $(ZIP_DIR)/system/etc/.has_su_daemon

