#!/bin/bash -e
set -o pipefail

upx bin/arm/chisel_linux_armv7
upx bin/aarch64/chisel_linux_arm64
upx --best bin/mips/chisel_linux_mips_sf
upx --best bin/mipsel/chisel_linux_mipsle_sf
