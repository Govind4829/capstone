sudo -s
nano /var/www/index/index.html
vi  /var/www/index/index.html
service apache2 status
sudo -s
top -c
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
service apache2 status
nano /var/www/html/index.html
sudo apt update
sudo apt upgrade
apt-cache search openjdk | grep openjdk-17
sudo apt install openjdk-17-jdk
java --version
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo systemctl status apache2
sudo systemctl stop apache2
sudo systemctl status apache2
sudo systemctl kill  apache2
sudo systemctl status apache2
h
history
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl status docker
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
sudo apt update
sudo apt install maven
mvn -v
ls
cd apache2-app/
ls
cd devops-build/
ls
cd build/
ls
ls -ltr
pwd
mvn clean install
sudo apt install maven
cd ..
mvn clean install
ls
cd build/
ls -ltr
cd static/
ls -ltr
cd ..
locate pom.xml
sudo apt install plocate
mvn compile -Dsource=src/main/java -Doutput=target/classes
cd ..
cd ../..
ls
cd apache2-app/
ls
vi Dockerfile 
sudo vi Dockerfile 
docker images
sudo su
systemctl status jenkins
sudo systemctl stop jenkins
systemctl status jenkins
sudo systemctl start jenkins
systemctl status jenkins
sudo apt-get remove maven
mvn -v
exit
cd apache2-app/
ls
ls -ltr
rm -rf index.html
sudo rm -rf index.html
ls -ltr
vi build.sh
sudo vi build.sh
ls -ltr
sudo sh build.sh 
sudo docker images
pwd
sudo vi build.sh
sudo sh build.sh 
sudo docker images
ls -ltr
vi Dockerfile 
ls -ltr
sudo vi build.sh
sudo sh build.sh 
chmod +x build.sh
sudo chmod +x build.sh
ls -ltr
sudo sh build.sh 
sudo vi build.sh
sudo sh build.sh 
ls -ltr
sudo vi build.sh
cd ..
ls -ltr
sudo chown -R ubuntu:ubuntu apache2-app
ls -ltr
cd apache2-app/
ls -ltr
sh build.sh 
sudo sh build.sh 
sudo systemctl status docker
sudo docker ps
ls -l /home/ubuntu/apache2-app
vi build.sh 
sudo sh build.sh 
./build.sh 
sudo su
