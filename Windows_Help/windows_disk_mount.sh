#!/bin/bash
# # Manually Mount a Windows Hard Disk in Linux
# 
# Identify the Windows Partition
# 
# lsblk or sudo fdisk -l
# 
# Create a Mount Point
# 
# sudo mkdir -p /mnt/windows
# 
# Always back up the fstab file before making changes:
# 
# sudo cp /etc/fstab /etc/fstab.backup
# 
# To automatically mount a Windows partition during boot, 
# you can add an entry to the /etc/fstab file.
# 
# blkid
# /dev/sda1: UUID="1234-5678" TYPE="ntfs" PARTUUID="abcd-efgh"
# 
# 
# sudo nano /etc/fstab
# 
# UUID=1234-5678 /mnt/windows ntfs-3g defaults 0 0
# UUID=1234-5678 /mnt/windows vfat defaults 0 0
# 
# 
# Test the Configuration
# 
# sudo mount -a
# 
# If you encounter issues, check system logs with:
# 
# sudo dmesg | tail
# 
# 
# 
# 
# Define the device and mount point
DEVICE="/dev/sdXn"    # Replace with your Windows partition (e.g., /dev/sda1)
MOUNT_POINT="/mnt/windows"

# Create the mount point directory if it doesn't exist
if [ ! -d "$MOUNT_POINT" ]; then
    sudo mkdir -p "$MOUNT_POINT"
fi

# Mount the partition
sudo mount -t auto "$DEVICE" "$MOUNT_POINT"

# Check if the mount was successful
if mount | grep -q "$MOUNT_POINT"; then
    echo "Partition mounted successfully at $MOUNT_POINT"
else
    echo "Failed to mount the partition. Please check the device and mount point."
fi

