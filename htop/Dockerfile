# docker build -t zerhacken/htop .
# docker run --rm -it --pid host zerhacken/htop
FROM ubuntu:16.04
LABEL maintainer "Rasmus Christian Pedersen <zerhacken@yahoo.com>"

RUN apt-get update
RUN apt-get install htop

CMD ["htop"]