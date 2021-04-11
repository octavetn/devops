sudo docker build --pull --rm -f "dockerfile" -t devops:latest .
sudo docker run -p 80:80 -d --name devops devops:latest
