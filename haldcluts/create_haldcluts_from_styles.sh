#!/bin/bash
# Builds all the haldclut files based on the styles from a given darktable instalation.
#
# Author: João Almeida <info@joaoalmeidaphotography.com>

darktable-cli Hald_CLUT_Identity.tif 't3mujinpack - Color Slide - Fuji Astia 100F.png' --out-ext png --style 't3mujinpack - Color Slide|Fuji Astia 100F' --core --configdir '~\.config\darktable'
