     ############################Tutorial para Instalação da CSP######################### 
        apt-get update
        apt-get install python-software-properties software-properties-common
        apt-get install default-jdk
        apt-get update
        apt-get install ant subversion        
        cd /tmp
	Adicione a seguinte linha ao /etc/apt/sources.list:
        deb http://debian.opennms.org/ stable main
        Instale a chave GPG do repositório:
        # wget -O - http://debian.opennms.org/OPENNMS-GPG-KEY | sudo apt-key add -
        Atualize o índice do pacote:
        # sudo apt-get update
        Instale o pacote oracle-java8-unlimited-jce-policy deb:
        # sudo apt-get install oracle-java8-unlimited-jce-policy

        baixar o arquivo "https://www.oracle.com/technetwork/pt/java/javase/downloads/jre8-downloads-2133155.html"
        enviar para a pasta /tmp jre-8u211-linux-x64.tar.gz com filezilla ou outro        
        tar -xvzf jre-8u211-linux-x64.tar.gz
        mkdir jre-oracle
        mv jre1.8.0_211  jre1
	mv jre1/* jre-oracle
        rm -rf jre1
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
