#secure-ssh.sh
#author peyton
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "All YOUR CODE GOES HERE"

sudo useradd -m -d /home/testUser -s /bin/bash testUser
sudo mkdir /home/testUser/.ssh
sudo cp /home/peyton/SYS265/linux/public-keys/id_rsa.pub /home/testUser/.ssh/authorized_keys
sudo chmod 600 /home/testUser/.ssh/authorized_keys
sudo chmod 700 /home/testUser/.ssh/
sudo chown -R testUser:testUser /home/testUser/.ssh
