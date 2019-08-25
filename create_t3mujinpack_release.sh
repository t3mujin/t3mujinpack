#!/bin/bash
# Creates t3mujinpack releases in different flavors.
#
# Author: João Almeida <info@joaoalmeidaphotography.com>

set -euo pipefail

die () {

    echo ""
    echo ""
    echo -ne "${YELLOW}$@${NC}"
    echo ""

    exit 1
}

# Initialize output colors
LIGHT_GREY='\033[0;37m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
LIGHT_BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo ""
echo "----------------------------------------------------------------------"
echo -e "${LIGHT_BLUE}t3mujinpack - Film emulation presets for Darktable"
echo ""
echo -e "Create Releases script${NC}"
echo "----------------------------------------------------------------------"


[ "$#" -eq 1 ] || die "Missing version number"

echo ""
echo "Generating releases for version $1"

# Generate temporary bundle folder with bundled files and move base files

if [ ! -d "t3mujinpack" ]; then
  mkdir t3mujinpack
fi

cp -r bin t3mujinpack
cp remove_t3mujinpack.* t3mujinpack
cp README.md t3mujinpack
cp LICENSE.txt t3mujinpack

# Create 1 level hierarchy
echo -e "${LIGHT_BLUE}Creating release with one level${NC}"

cp t3mujinpack*.dtstyle t3mujinpack

sed -i -e "s/\[master\]/$1/g" t3mujinpack/*.dtstyle

zip -r "./t3mujinpack_$1_one-level.zip" t3mujinpack/*

# Create 2 level hierarchy
cp t3mujinpack*.dtstyle t3mujinpack

sed -i -e "s/\[master\]/$1/g" t3mujinpack/*.dtstyle

sed -i -e "s/t3mujinpack - /t3mujinpack|/g" t3mujinpack/*.dtstyle

zip -r "./t3mujinpack_$1_two-level.zip" t3mujinpack/*

# Create flat hierarchy
cp t3mujinpack*.dtstyle t3mujinpack

sed -i -e "s/\[master\]/$1/g" t3mujinpack/*.dtstyle

sed -i -e "s/t3mujinpack - Black and White|/t3mujinpack - Black and White - /g" t3mujinpack/*.dtstyle
sed -i -e "s/t3mujinpack - Color Negative|/t3mujinpack - Color Negative - /g" t3mujinpack/*.dtstyle
sed -i -e "s/t3mujinpack - Color Slide|/t3mujinpack - Color Slide - /g" t3mujinpack/*.dtstyle

zip -r "./t3mujinpack_$1_flat.zip" t3mujinpack/*

# clear temporary files

rm -rf t3mujinpack

echo ""
echo ""
echo -ne "${GREEN}t3mujinpack release files have been created!${NC}"
echo ""
echo ""
