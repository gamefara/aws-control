# growi install

ssh access
```
sudo yum install -y git

git clone https://github.com/weseek/growi-docker-compose.git growi
sudo yum install -y docker
sudo usermod -aG docker ${USER}
sudo service docker start

sudo curl -L "https://github.com/docker/compose/releases/download/`curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | sed -e 's/[^0-9\.]//g'`/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

cd growi
cp examples/https-portal/docker-compose.override.yml .
vim docker-compose.override.yml
(DOMAINS rename)
(FORCE_RENEW commented)

```
