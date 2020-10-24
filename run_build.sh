#!/bin/bash 

BUILD_DIR=build
OUTPUT_FILE=platformer.p8
BUILD_PATH=$BUILD_DIR/$OUTPUT_FILE
HOME_PATH=~
CARTRIDGE_PATH="$HOME_PATH/Library/Application Support/pico-8/carts"

rm -rf build
mkdir build

cat <<EOT >> $BUILD_PATH
pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
EOT

echo "Combining files..."
find ./src -name '*.lua' -exec echo {} \; -exec echo "poop" \;
find ./src -name '*.lua' -exec printf "\n" >> $BUILD_PATH \; -exec cat {} \; >> $BUILD_PATH

printf "\n" >> $BUILD_PATH
cat graphics >> $BUILD_PATH

echo "Copying to pico-8 cartridge directory..."
cp $BUILD_PATH "$CARTRIDGE_PATH"
echo "Complete."
