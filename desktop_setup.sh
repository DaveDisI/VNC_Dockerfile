#! /bin/bash

apt-get update \
    && add-apt-repository ppa:mmk2410/intellij-idea \
    && apt-get install -y git \
    && wget https://download.processing.org/processing-3.5.4-linux64.tgz \
    && tar xfz processing-3.5.4-linux64.tgz \
    && /headless/processing-3.5.4/install.sh \
    && apt-get install -y ubuntu-make \
    && printf .local/share/umake/ide/eclipse | umake ide eclipse \
    && echo "[Desktop Entry]" > /usr/share/applications/eclipse-java.desktop \
    && echo "Version=1.0" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Type=Application" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Name=Eclipse" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Icon=/headless/.local/share/umake/ide/eclipse/java.png" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Exec=/headless/.local/share/umake/ide/eclipse/eclipse" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Terminal=false" >> /usr/share/applications/eclipse-java.desktop \
    && echo "Categories=Development;IDE;Programming" >> /usr/share/applications/eclipse-java.desktop \
    && rm .local/share/applications/eclipse-java.desktop \
    && cp /usr/share/applications/eclipse-java.desktop /headless/Desktop \
    && chmod +x /headless/Desktop/eclipse-java.desktop \
    && wget -O /headless/.config/bg_sakuli.png https://github.com/jointheleague/league-images/blob/master/League%20desktop.png?raw=true \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && yes | apt install ./google-chrome-stable_current_amd64.deb \
    && rm /headless/Desktop/firefox.desktop \
    && rm /headless/Desktop/chromium-browser.desktop \
    && echo "[Desktop Entry]" > /headless/Desktop/Chrome.desktop \
    && echo "Type=Application" >> /headless/Desktop/Chrome.desktop \
    && echo "Name=Chrome" >> /headless/Desktop/Chrome.desktop \
    && echo "Exec=/usr/bin/google-chrome https://github.com --no-sandbox" >> /headless/Desktop/Chrome.desktop \
    && echo "Icon=/usr/share/icons/hicolor/64x64/apps/google-chrome.png" >> /headless/Desktop/Chrome.desktop \
    && chmod +x /headless/Desktop/Chrome.desktop \
