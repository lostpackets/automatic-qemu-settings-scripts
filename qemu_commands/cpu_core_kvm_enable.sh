#!/bin/bash

# Determine the number of CPU cores
cores=$(grep -c ^processor /proc/cpuinfo)

# Start QEMU with the number of virtual CPU cores equal to the number of physical cores
qemu-system-x86 -smp $cores -enable-kvm
