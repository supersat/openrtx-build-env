#!/bin/sh
meson setup --cross-file cross_arm.txt build_arm
meson compile -C build_arm $*
