# docker build -t zerhacken/qt5-win .
# docker run --rm -it --pid host zerhacken/qt5-win
FROM microsoft/dotnet-framework
LABEL maintainer "Rasmus Christian Pedersen <zerhacken@yahoo.com>"

# Setup chocolatey
ENV chocolateyUseWindowsCompression false
RUN powershell -Command iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); choco feature disable --name showDownloadProgress

# Install dependencies
RUN choco install -y git
RUN choco install -y strawberryperl
RUN choco install -y python2
RUN choco install -y visualstudio2017buildtools

# clone qt source code and build
RUN git clone git://code.qt.io/qt/qt5.git qt5
RUN cd qt5 && git checkout 5.10
RUN cd qt5 && perl init-repository
RUN cd qt5 && configure -developer-build -opensource -nomake examples -nomake tests
