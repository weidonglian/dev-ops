# Amazon Linux AMI #


### Git ###

```sh
sudo yum update -y
sudo yum install git -y
```

### Docker ###

```sh
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
```


### Jenkins ###

```sh
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.keysudo yum install jenkins -y
sudo yum install java -y
sudo nano /etc/sysconfig/jenkins #Edit the jenkins_home and port number, java_executable to 1.8
sudo service jenkins start
sudo chkconfig jenkins on
sudo service jenkins start/stop/restart

cd ~ && git clone jenkins_home_repo
sudo chgrp jenkins -R jenkins_home
sudo chown jenkins -R jenkins_home
```
