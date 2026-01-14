#!/bin/bash

# Instalação das dependências
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo apt-get install -y default-jdk ant subversion

# Baixa o arquivo JRE
wget -O /tmp/jre-8u211-linux-x64.tar.gz "www...................!!!!!!!!!"

# Descompacta e move para a pasta /usr/lib
cd /tmp
tar -xvzf jre-8u211-linux-x64.tar.gz
sudo mv jre1.8.0_211/ /usr/lib/jre-oracle

# Configura o Java como alternativa
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jre-oracle/bin/java" 1
sudo update-alternatives --set java /usr/lib/jre-oracle/bin/java

# Baixa e compila a CSP
cd /lib
sudo mkdir cspsvn
cd cspsvn
sudo svn co http://streamboard.tv/svn/CSP/trunk CSP-svn
cd CSP-svn
sudo update-alternatives --config java
sudo ant tar-app
sudo update-alternatives --config java

# Instala a CSP
cd /dist
sudo tar -zxvf cardservproxy.tar.gz
sudo mv cardservproxy /usr/local/csp
sudo rm -rf /usr/local/csp/*
cd /usr/local/
sudo git clone https://github.com/cabralfilho/java-jdk-csp.git
cd java-jdk-csp
sudo tar -zxvf csp.tar.gz

# Configura a inicialização automática da CSP
sudo sh -c "echo '#!/bin/bash' > /etc/rc.local"
sudo sh -c "echo 'cd /usr/local/csp' >> /etc/rc.local"
sudo sh -c "echo './cardproxy.sh start' >> /etc/rc.local"
sudo sh -c "echo 'chown root:syslog /var/log' >> /etc/rc.local"
sudo sh -c "echo 'exit 0' >> /etc/rc.local"
sudo chmod +x /etc/rc.local

# Inicia a CSP
sudo /usr/local/csp/cardproxy.sh start



mv to  2026  
 ############################Tutorial para Instalação da CSP######################### 
    apt-get update
    apt-get install python-software-properties software-properties-common
apt-get install -y software-properties-common  (18)
apt-get install default-jdk -y
    apt-get update
    apt-get install ant subversion        
    baixar o arquivo "www...................!!!!!!!!!"
    enviar para a pasta /tmp jre-8u211-linux-x64.tar.gz com filezilla ou outro        
    cd /tmp
tar -xvzf jre-8u211-linux-x64.tar.gz   
    tar -zxvf ****

mv o jre**** /  jre-oracle
    sudo mv jre-oracle/ /usr/lib
    sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jre-oracle/bin/java" 1
    sudo update-alternatives --set java /usr/lib/jre-oracle/bin/java        
    cd /lib
mkdir cspsvn
cd cspsvn
svn co http://streamboard.tv/svn/CSP/trunk CSP-svn
cd CSP-svn
    update-alternatives --config java
   Selection         Path                                            Priority   Status
      selecione  ------------------------------------------------------------
jdk ==> * 0       /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      auto mode
      1       /usr/lib/jre-oracle/bin/java                     1         manual mode
      2       /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      manual mode 
   
   ant tar-app
   update-alternatives --config java
   
   Selection         Path                                            Priority   Status
      selecione  ------------------------------------------------------------
      0       /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      auto mode
 jdk ==> *  1       /usr/lib/jre-oracle/bin/java                     1         manual mode
      2       /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      manual mode 

    ant tar-app
    update-alternatives --config java
  Selection        Path                                            Priority   Status
     selecione     ------------------------------------------------------------
          0   /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      auto mode
jre ==> * 1   /usr/lib/jre-oracle/bin/java                     1         manual mode
          2   /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      manual mode        

    cd /dist

tar -zxvf cardservproxy.tar.gz
mv cardservproxy /usr/local/csp
rm -rf /usr/local/csp/*
cd /usr/local/
git clone https://github.com/cabralfilho/java-jdk-csp.git
cd  java-jdk-csp
tar -zxvf csp.tar.gz

nano /etc/rc.local
Linhas para inclusão no arquivo rc.local	

cd /usr/local/csp
./cardproxy.sh start
chown root:syslog /var/log
exit 0

  Salve o arquivo utilizando "ctrl+x"

  Inicializando a CSP, execute os comandos abaixo na ordem

cd /usr/local/csp
   
./cardproxy.sh start
