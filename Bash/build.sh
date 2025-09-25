#!/bin/bash
sudo docker rmi -f $(sudo docker images -q) ##this is not recommned step, i am deleting existing images to save space
sudo rm -r gold ## these steps are not recommened instead you can modify script as shown below
sudo mkdir gold
cd gold/
sudo git clone https://github.com/Hussi503/Day5.git
cd Day5/Code
sudo docker build -t react-microk8s -f golddockerfile .sudo docker login -u hussi503 -p Hussi@503
sudo docker login -u hussi503 -p Hussi@503
sudo docker tag react-microk8s:latest hussi503/sagar-k-practice:latest ##make sure you did docker login
sudo docker push hussi503/sagar-k-practice:latest
