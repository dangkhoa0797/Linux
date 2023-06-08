echo ${PWD##*/} # get name parent folder

# Thay đổi quyền với chmod
chmod u=rwx,g=rwx,o=rwx dir1 <filename>

# Thay đổi owner và group cần có quyền sudo
sudo chown <username> <filename>
sudo chown <groupname> <filename>
sudo chown <username>:<groupname> <filename>

# add user to group
usermod -aG <group> <user>

# copy file and folder
rsync -a /root/damian/ /root/khoa # copy all file and folder inside damian into khoa
rsync -avzhe --progress ssh root@192.168.1.1:/root/damian/ /root/khoa # use SSH copy all file and folder inside damian into khoa
rsync -avzhe --progress ssh /root/damian/ root@192.168.1.1:/root/khoa # use SSH copy all file and folder inside damian into khoa
#rsync -a /root/damian /root/khoa # copy folder damian into folder khoa
cp -r /root/damian /root/khoa # copy folder damian into folder khoa

# copy file and folder from windows to linux
scp -r d:/docs/notes.txt root@10.1.20.13:/root/go

# https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script nhập biến từ command line

# get service use port
ss -tulpn | grep LISTEN

#get prosess with pid
top -bcn 1