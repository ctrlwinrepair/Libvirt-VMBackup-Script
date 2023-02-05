#!/bin/bash

echo "VMBackup, back up virtual machines in the most dirty simple way possible"

#An easy script to backup Virtual machines. Replace first and last paths as you see fit
#RUN AS ROOT OBVS

rm /media/luciano/Cryptd/VMBackup/*;

echo "Launching backup now..Please wait..A while. Go make yourself a snack, maybe take nap. Maybe go touch grass..?"

cp -v /var/lib/libvirt/images/debian10-1.qcow2 /media/luciano/Cryptd/VMBackup;
echo "VM 1/5 Complete.."
cp -v /var/lib/libvirt/images/KaliVM.qcow2 /media/luciano/Cryptd/VMBackup;
echo "VM 2/5 Complete.."
cp -v /var/lib/libvirt/images/MXLinux.qcow2 /media/luciano/Cryptd/VMBackup;
echo "VM 3/5 Complete.."
cp -v /var/lib/libvirt/images/ParrotOS.qcow2 /media/luciano/Cryptd/VMBackup;
echo "VM 4/5 Complete.."
cp -v /var/lib/libvirt/images/Win10Main-clone.qcow2 /media/luciano/Cryptd/VMBackup;
echo "VM 5/5 Complete!"
echo "Backups done. Thank you for your patience! Have a good day."

#When importing backups to Libvirt/Virt-Manager, just move the image from where you stored the backup and then to /var/lib/libvirt/images.
#Create the virtual machine like you normally would, use the backed up image as the main virtual disk/drive for the VM.
