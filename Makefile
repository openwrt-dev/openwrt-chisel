include $(TOPDIR)/rules.mk

PKG_NAME:=chisel
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk

define Package/chisel
	SECTION:=net
	CATEGORY:=Network
	TITLE:=A fast TCP tunnel over HTTP
	URL:=https://github.com/jpillora/chisel
endef

define Package/chisel/description
Chisel is a fast TCP tunnel, transported over HTTP, secured via SSH.
endef

ifeq ($(ARCH),i386)
	BIN_ARCH:=386
endif
ifeq ($(ARCH),x86_64)
	BIN_ARCH:=amd64
endif
ifeq ($(ARCH),arm)
	BIN_ARCH:=armv7
endif
ifeq ($(ARCH),aarch64)
	BIN_ARCH:=arm64
endif
ifeq ($(ARCH),mips)
	BIN_ARCH:=mips_sf
endif
ifeq ($(ARCH),mipsel)
	BIN_ARCH:=mipsle_sf
endif

define Build/Compile
endef

define Package/chisel/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) bin/$(ARCH)/chisel_linux_$(BIN_ARCH) $(1)/usr/bin/chisel
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) files/chisel.init $(1)/etc/init.d/chisel
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) files/chisel.config $(1)/etc/config/chisel
endef

$(eval $(call BuildPackage,chisel))
