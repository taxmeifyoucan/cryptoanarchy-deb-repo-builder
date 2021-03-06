BTCPAYSERVER_VERSION=1.0.3.164
BTCPAYSERVER_BUILD_DIR=$(BUILD_DIR)/btcpayserver-$(BTCPAYSERVER_VERSION)


BTCPAYSERVER_SOURCE_DIR=$(SOURCE_DIR)/btcpayserver
BTCPAYSERVER_DEB_VERSION=$(BTCPAYSERVER_VERSION)-1
BTCPAYSERVER_BIN_VERSION=$(BTCPAYSERVER_DEB_VERSION)_$(DEB_ARCH)
BTCPAYSERVER_SHARE_VERSION=$(BTCPAYSERVER_DEB_VERSION)_all

BTCPAYSERVER_BIN_PACKAGES=$(addsuffix _$(BTCPAYSERVER_BIN_VERSION), btcpayserver)
BTCPAYSERVER_SHARE_PACKAGES=$(addsuffix _$(BTCPAYSERVER_SHARE_VERSION), btcpayserver-system-mainnet)
BTCPAYSERVER_PACKAGES=$(addprefix $(BUILD_DIR)/, $(addsuffix .deb, $(BTCPAYSERVER_BIN_PACKAGES) $(BTCPAYSERVER_SHARE_PACKAGES)))
BTCPAYSERVER_EXTRA_FILES=$(addprefix $(BUILD_DIR)/,btcpayserver_$(BTCPAYSERVER_BIN_VERSION).buildinfo btcpayserver_$(BTCPAYSERVER_BIN_VERSION).changes btcpayserver_$(BTCPAYSERVER_DEB_VERSION).dsc btcpayserver_$(BTCPAYSERVER_DEB_VERSION).tar.gz)
