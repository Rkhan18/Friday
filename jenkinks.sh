sudo dnf install fontconfig java-21-amazon-corretto -y
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf install jenkins -y
ls -l /usr/bin/jenkins
ls -ld /var/lib/jenkins
systemctl cat jenkins
sudo mkdir -p /var/lib/jenkins
sudo mkdir -p /var/log/jenkins

sudo chown -R jenkins:jenkins /var/lib/jenkins
sudo chown -R jenkins:jenkins /var/log/jenkins
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
