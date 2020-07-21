# build

```
ssh access
sudo yum install -y git docker

sudo usermod -aG docker ${USER}
sudo service docker restart

sudo curl -L "https://github.com/docker/compose/releases/download/`curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | sed -e 's/[^0-9\.]//g'`/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```
