FROM consol/ubuntu-xfce-vnc
ENV REFRESHED_AT 2018-03-18

# Switch to root user to install additional software
USER 0

## Install a gedit
RUN  apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:lyzardking/ubuntu-make \
    && apt-get update \
    && apt-get install -y sudo \
    && apt-get install curl \
    && add-apt-repository ppa:mmk2410/intellij-idea \
    && apt-get install -y git \
    && wget https://download.processing.org/processing-3.5.4-linux64.tgz --no-check-certificate\
    && tar xfz processing-3.5.4-linux64.tgz \
    && /headless/processing-3.5.4/install.sh \
    && apt-get install -y ubuntu-make \
    && apt-get install -y python3-tk \
    && apt-get install -y python3-pil \
    && apt-get install -y python3-pil.image \
    && apt-get install -y python3-pil.imagetk \
    && wget -O /headless/.config/bg_sakuli.png https://github.com/jointheleague/league-images/blob/master/League%20desktop.png?raw=true \
    && add-apt-repository ppa:ubuntu-mozilla-security/ppa \
    && apt-get update \
    && apt-get install -y firefox \
    && apt-get upgrade -y \
    && apt-get install -y default-jre \
    && apt-get install -y default-jdk \
    && wget https://download.jetbrains.com/python/pycharm-community-2020.2.tar.gz -P /headless \
    && tar xfz /headless/pycharm-community-2020.2.tar.gz -C /headless \
    && rm /headless/pycharm-community-2020.2.tar.gz \
    && echo "[Desktop Entry]" > /headless/Desktop/pycharm.desktop \
    && echo "Type=Application" >> /headless/Desktop/pycharm.desktop \
    && echo "Name=Pycharm" >> /headless/Desktop/pycharm.desktop \
    && echo "Icon=/headless/pycharm-community-2020.2/bin/pycharm.png" >> /headless/Desktop/pycharm.desktop \
    && echo "Exec=/headless/pycharm-community-2020.2/bin/pycharm.sh" >> /headless/Desktop/pycharm.desktop \
    && echo "Terminal=false" >> /headless/Desktop/pycharm.desktop \
    && echo "Categories=Development;IDE;Programming" >> /headless/Desktop/pycharm.desktop \
    && chmod +x /headless/Desktop/pycharm.desktop \
    && wget http://mirrors.syringanetworks.net/eclipse/technology/epp/downloads/release/oxygen/3a/eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz -P /headless \
    && tar xfz /headless/eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz -C /headless \
    && rm /headless/eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz \
    && echo "[Desktop Entry]" > /headless/Desktop/eclipse.desktop \
    && echo "Type=Application" >> /headless/Desktop/eclipse.desktop \
    && echo "Name=Eclipse" >> /headless/Desktop/eclipse.desktop \
    && echo "Icon=/headless/eclipse/icon.xpm" >> /headless/Desktop/eclipse.desktop \
    && echo "Exec=/headless/eclipse/eclipse" >> /headless/Desktop/eclipse.desktop \
    && echo "Terminal=false" >> /headless/Desktop/eclipse.desktop \
    && echo "Categories=Development;IDE;Programming" >> /headless/Desktop/eclipse.desktop \
    && chmod +x /headless/Desktop/eclipse.desktop 
    && curl -o /headless/eclipse/eclipse.ini https://raw.githubusercontent.com/League-central/VNC_Dockerfile/master/eclipse.ini
## switch back to default user          
## USER 1000 
