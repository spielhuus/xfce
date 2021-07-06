FROM spielhuus/x2go:latest

ENV DEBIAN_FRONTEND noninteractive

# install ubuntu packages and cleanup
RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get install -y xfce4-session xfwm4 xfce4-panel xfce4-terminal gtk3-engines-xfce \
    xfce4-appfinder epiphany-browser picard \
    gimp thunar scite unrar shntool cuetools unzip &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*
