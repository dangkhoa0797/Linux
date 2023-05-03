echo ${PWD##*/} # get name parent folder

# Thay đổi quyền với chmod
chmod u=rwx,g=rwx,o=rwx dir1 <filename>

# Thay đổi owner và group cần có quyền sudo
sudo chown <username> <filename>
sudo chown <groupname> <filename>
sudo chown <username>:<groupname> <filename>

# add user to group
usermod -aG <group> <user>