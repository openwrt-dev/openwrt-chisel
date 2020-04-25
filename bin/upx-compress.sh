#!/bin/bash -e
set -o pipefail

upx arm/chisel_linux_armv7
upx aarch64/chisel_linux_arm64
upx --best mips/chisel_linux_mips_sf
upx --best mipsel/chisel_linux_mipsle_sf
