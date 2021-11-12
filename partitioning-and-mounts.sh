#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


echo "Creating mount directories"
mkdir -p /{disk-data,disk-backup,disk-repo}
echo "Done"
# insert mount points for data disk

if grep -q 'disk-data' /etc/fstab; then
    : nothing
else
    printf '# disk-data\nUUID=b87a0e24-4153-4589-968e-ce0714f6577b	/disk-data	ext4	defaults	0	2\n' >> /etc/fstab
fi

# insert mount points for backup disk

if grep -q 'disk-backup' /etc/fstab; then
    : nothing
else
    printf '# disk-backup\nUUID=928f9aa0-48bf-4b83-84b8-bc386e7cfcdc	/disk-backup	ext4	defaults	0	2\n' >> /etc/fstab
fi

# insert mount points for repo disk

if grep -q 'disk-repo' /etc/fstab; then
    : nothing
else
    printf '# disk-repo\nUUID=d1f963ad-8216-42a9-ab77-0298ad2c7ac0	/disk-repo	ext4	defaults	0	2\n' >> /etc/fstab
fi

echo "File /etc/fstab is now updated"