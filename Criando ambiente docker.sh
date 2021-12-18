#Ambiente Docker
sudo apt update && sudo apt upgrade -y &&
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" &&
sudo apt update &&
apt-cache policy docker-ce &&
sudo apt install docker-ce -y &&
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo usermod -aG docker azureuser &&
sudo reboot
#Ambiente Docker

#buildando imagem
git clone https://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@github.com/Thiagosnts/Jogo-da-Velha.git &&
cd Jogo-da-Velha &&
ssh azureuser@52.188.111.157
docker build -t jogo:v1 . &&
docker run --name jogodavelha --restart=always -d -p 80:80 jogo:v1




#!/bin/bash

servico="jogodavelha" &&
token_git=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 &&
app_repo=github.com/Thiagosnts/Jogo-da-Velha.git
name_repo="Jogo-da-Velha"


cont=$(docker ps -a | grep $servico | awk '{print $1}') &&
if [ ! -z "$cont" ];then
    docker stop $(docker ps | grep $servico | awk '{print $1}') &&
    docker rm -v $(docker ps -a | grep $servico | awk '{print $1}')
fi &&

if [ -d $name_repo ]; then
    rm -r $name_repo
fi &&

git clone https://$token_git@$app_repo&&
cd $name_repo &&
docker build -t $servico"img":v1 . &&
docker run --name $servico --restart=always -d -p 80:80 $servico"img":v1
