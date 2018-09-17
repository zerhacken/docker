# docker build -t zerhacken/qt5 .
# docker run --rm -it --pid host zerhacken/qt5
FROM ubuntu:16.04
LABEL maintainer "Rasmus Christian Pedersen <zerhacken@yahoo.com>"

# https://wiki.qt.io/Building_Qt_5_from_Git
RUN apt-get update && apt-get -y install sudo lsb-release bash-completion git vim wget curl
RUN apt-get update && apt-get -y install "^libxcb.*-dev" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev
RUN apt-get update && apt-get -y install build-essential python
# clone qt source code and build
RUN git clone git://code.qt.io/qt/qt5.git qt5
RUN cd qt5 && git checkout 5.10
RUN cd qt5 && perl init-repository
RUN cd qt5 && ./configure -developer-build -opensource -nomake examples -nomake tests
RUN cd qt5 && make