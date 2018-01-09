# This dockerfile use for image compare test
# Author: Qi Lei
FROM node:9

ADD . /test
WORKDIR /test

# Download and install Gradle
RUN npm install

RUN apt-get update

# Install chrome
RUN apt-get -y install libnss3 unzip fonts-liberation libnspr4 libgconf-2-4 xdg-utils gconf-service libasound2 libxss1 libappindicator1 libindicator7 libgtk-3-0 lsb-release
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get -f install -y
RUN dpkg -i google-chrome*.deb

# Install chromedriver
RUN wget -N https://chromedriver.storage.googleapis.com/LATEST_RELEASE -P ~/Downloads
RUN wget -N "http://chromedriver.storage.googleapis.com/`cat ~/Downloads/LATEST_RELEASE`/chromedriver_linux64.zip" -P ~/Downloads
RUN unzip ~/Downloads/chromedriver_linux64.zip -d ~/Downloads
RUN chmod +x ~/Downloads/chromedriver
RUN mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver
RUN ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
RUN ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

#Install Headless Display
RUN apt-get -y install xvfb

#CMD ["/bin/bash"]
CMD sh run_compare_test.sh