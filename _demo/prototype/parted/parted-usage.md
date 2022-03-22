
sudo parted -- /dev/sdc help

sudo parted -- /dev/sdc help print
sudo parted -- /dev/sdc help mkpart
sudo parted -- /dev/sdc help set
sudo parted -- /dev/sdc help rm


sudo parted -- /dev/sdc print


sudo parted -- /dev/sdc mkpart primary ext4 1 50%
sudo parted -- /dev/sdc mkpart primary ext4 50% -1


sudo parted -- /dev/sdc set 2 boot on


sudo parted -- /dev/sdc rm 1
sudo parted -- /dev/sdc rm 2


sudo mkfs.ext4 /dev/sdc1 -q -F
sudo mkfs.ext4 /dev/sdc2 -q -F


sudo blkid /dev/sdc1
sudo blkid /dev/sdc2


mkdir rootfs

sudo mount /dev/sdc1 rootfs



