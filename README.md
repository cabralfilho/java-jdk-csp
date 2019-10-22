     ############################Tutorial para Instalação da CSP######################### 
        apt-get update
        apt-get install python-software-properties software-properties-common
        apt-get install default-jdk -y
        apt-get update
        apt-get install ant subversion        
        baixar o arquivo "https://www.oracle.com/technetwork/pt/java/javase/downloads/jre8-downloads-2133155.html"
        enviar para a pasta /tmp jre-8u211-linux-x64.tar.gz com filezilla ou outro        
        cd /tmp
	tar -xvzf jre-8u211-linux-x64.tar.gz        
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
