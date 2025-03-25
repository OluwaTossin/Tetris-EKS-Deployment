#!/bin/bash

# Update and install Docker & AWS CLI
sudo apt-get update -y
sudo apt-get install -y docker.io unzip curl awscli

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Login to AWS ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 590183956481.dkr.ecr.us-east-1.amazonaws.com

# Pull and run the Tetris game images from ECR
docker pull 590183956481.dkr.ecr.us-east-1.amazonaws.com/tetrisv1:latest
docker pull 590183956481.dkr.ecr.us-east-1.amazonaws.com/tetrisv2:latest

docker run -d --name tetris-v1 -p 3000:3000 590183956481.dkr.ecr.us-east-1.amazonaws.com/tetrisv1:latest
docker run -d --name tetris-v2 -p 8081:80 590183956481.dkr.ecr.us-east-1.amazonaws.com/tetrisv2:latest
