Using a full blown ide on a headless Pi Zero 2 W deems you to have a bad time. That is because the CPU and RAM available is very weak and slow.
To alleviate this problem we can use sshfs.

To work remotely its best to use sshfs as it allows you to work remotely by mounting a remote directory on your local machine.

1. Update your Linux system.
sudo apt update

2. Install sshfs.
sudo apt install sshfs

3. Mkdir in you mnt folder
sudo mkdir /mnt/somename

4. Mount via sshfs
sudo sshfs -o allow_other,default_permissions pi@XXX.XXX.XXX.XXX:~/ /mnt/somename
In case the above throes the 'No such file or directory' replace ~ with /home/pi (That solved that problem for me)

5. yes to the prompted question

6. That's it!
