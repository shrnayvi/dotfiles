# Hibernate

## For Arch
Check for the swap files
`$ sudo swapon -s`

To turn off swap files
` $sudo swapoff -a`

Run following to create a swap file:
```
$ sudo dd if=/dev/zero of=/swapfile bs=1M count=10k status=progress
$ sudo mkswap /swapfile
$ sudo chmod 600 /swapfile
$ sudo swapon /swapfile
```

Making swap persistent
Doing the above will simply create and enable our swap file.  After a reboot our swap file won't be enabled. 
We're going to be editing /etc/fstab - which is an important file and messing it up could render your system unbootable.  So let's first back it up:

`$ sudo cp /etc/fstab /etc/fstab.backup`

Now let's make our swap file persistent:
`$ echo '/swapfile none    swap    defaults 0 0' | sudo tee -a /etc/fstab`

Now make sure you run (see below) which will check for errors.  If nothing (no errors) show then you should be good to go.  If errors, don't reboot until you fix (or restore fstab from the backup we made).
`$ sudo mount -a`

If there is no error output, then we should be good to go and we can not delete the backup we made:
`$ sudo rm /etc/fstab.backup`

Install hibernator
```
$ git clone https://github.com/Chrysostomus/hibernator.git
$ cd hibernator
$ chmod +x hibernator
```

Updating grub

So, before we can edit our grub, we need a few pieces of information:

device name of partition where have swap file;
physical offset of /swapfile (which is my swap file).
Find device UUID for root partition (non-LUKS)
For a standard (non-LUKS) root partition we need the partition that is mounted to root (/) and it's UUID.

Check and run `df`


To find the UUID for our partition we can run:
`$ sudo blkid`

Find physical offset of /swapfile
We also need to the physical offset for our swap file.  Grub needs this to know example where the swap file resides on the root partition.  We can find this offset by running:

`$ sudo filefrag -v /swapfile`

The value we are after is the ext 0 physical offset (first value of physical_offset) as shown in the image (red rectangle). 

Edit the grub
`$ sudo vim /etc/default/grub`

We want to find the line starting with GRUB_CMDLINE_LINUX_DEFAULT and append following following bits of information we got previously.
GRUB_CMDLINE_LINUX_DEFAULT="quiet resume=UUID=<uuid> resume_offset=<offset>"


Restart grub
`$ sudo grub-mkconfig -o /boot/grub/grub.cfg`









