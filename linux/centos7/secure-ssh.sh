#secure-ssh.sh
#author peyton
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "All YOUR CODE GOES HERE"

sudo useradd -m -d /home/testUser3 -s /bin/bash testUser3
sudo mkdir /home/testUser3/.ssh
cp /home/peyton/SYS-265/linux/public-keys/id_rsa.pub /home/testUser3/.ssh/authorized_keys
chmod 600 /home/testUser3/.ssh/authorized_keys
chmod 700 /home/testUser3/.ssh/
chown -R testUser3:testUser3 /home/testUser3/.ssh
