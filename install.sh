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
