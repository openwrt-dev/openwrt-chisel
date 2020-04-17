#!/bin/bash -e
set -o pipefail

upx --lzma bin/arm/chisel_linux_armv7
upx --lzma bin/aarch64/chisel_linux_arm64
#upx --lzma --best bin/mips/chisel_linux_mips_sf
#upx --lzma --best bin/mipsel/chisel_linux_mipsle_sf
