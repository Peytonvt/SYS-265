#secure-ssh.sh
#author peyton
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "All YOUR CODE GOES HERE"

sudo useradd -m -d /home/testUser2 -s /bin/bash testUser2
sudo mkdir /home/testUser2/.ssh
cp /home/peyton/SYS-265/linux/public-keys/id_rsa.pub /home/testUser2/.ssh/authorized_keys
chmod 600 /home/testUser2/.ssh/authorized_keys
chmod 700 /home/testUser2/.ssh/
chown -R testUser2:testUser2 /home/testUser2/.ssh
