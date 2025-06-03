#!/bin/bash
set -e

# Paths
PKG_DIR="linux-firmware-lemon-package"
FIRMWARE_DIR="$PKG_DIR/lib/firmware"

# Clean target
rm -rf "$FIRMWARE_DIR"
mkdir -p "$FIRMWARE_DIR/wlan/prima"

# Copy from submodule 1
cp android_device_fairphone_FP2/wifi/WCNSS* "$FIRMWARE_DIR/wlan/prima/"

# Copy from submodule 2
cp fp2-firmware/* "$FIRMWARE_DIR/"

# Set correct permissions
find "$FIRMWARE_DIR" -type f -exec chmod 644 {} \;

# Build .deb package
dpkg-deb --build "$PKG_DIR"

echo "Built package: ${PKG_DIR}.deb"
