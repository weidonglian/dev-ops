# Ubuntu #

### Docker CE ###

```sh
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install docker-ce
```

### Docker Ubuntu Repo Version ###

```sh
sudo apt install docker.io
```


### Docker ###

```sh
sudo usermod -a -G docker $USER
```

### AWS Create a volume ###
Create a volume in EC2's volume and then attach it to an ec2 instance.
ssh into your ec2 instance:
```
sudo file -s /dev/xvdf
sudo mkfs -t xfs /dev/xvdf
sudo file -s /dev/xvdf
sudo mkdir /postgres
sudo mount /dev/xvdf /postgres
```
