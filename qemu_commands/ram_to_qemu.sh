# Determine the amount of RAM in GB
ram=$(grep MemTotal /proc/meminfo | awk '{print $2/1024/1024}')

# Start QEMU with the amount of virtual RAM equal to 80% of the total physical RAM
qemu-system-x86 -m $(echo "$ram * 0.8" | bc)G -enable-kvm
