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
sudo chown jenkins:jenkins -R jenkins_home

sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo service iptables save
sudo chkconfig iptables on
```

#### What does this package do? ####

Jenkins will be launched as a daemon on startup. See /etc/init.d/jenkins for more details.
The 'jenkins' user is created to run this service. If you change this to a different user via the config file, you must change the owner of the following folder:
1. /var/log/jenkins
2. /var/lib/jenkins
3. /var/cache/jenkins

Log file will be placed in /var/log/jenkins/jenkins.log. Check this file if you are troubleshooting Jenkins.
/etc/sysconfig/jenkins will capture configuration parameters for the launch.
By default, Jenkins listen on port 8080. Access this port with your browser to start configuration.  Note that the built-in firewall may have to be opened to access this port from other computers.  (See http://www.cyberciti.biz/faq/disable-linux-firewall-under-centos-rhel-fedora/ for instructions how to disable the firewall permanently)
A Jenkins RPM repository is added in /etc/yum.repos.d/jenkins.repo
