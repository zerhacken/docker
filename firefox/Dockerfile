
# open -a XQuartz
# docker build -t zerhacken/firefox .
# ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
# xhost + $ip
# docker run --rm -it -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Downloads:/root/Downloads zerhacken/firefox 
FROM ubuntu:16.04
LABEL maintainer "Rasmus Christian Pedersen <zerhacken@yahoo.com>"

RUN apt-get update && apt-get install -y firefox
RUN useradd -u 501 -m zerhacken

#ENV LANG en-US
#COPY local.conf /etc/fonts/local.conf
#ENTRYPOINT [ "/usr/bin/firefox" ]

USER zerhacken
ENV HOME /home/zerhacken
CMD /usr/bin/firefox