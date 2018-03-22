
FROM ubuntu:latest
LABEL maintainer="lonlac@cril.fr"

RUN apt-get -y update && apt-get install -y g++-4.9 \
    zlib1g-dev \
    build-essential \
    wget \
    zip

RUN wget http://www.labri.fr/perso/lsimon/downloads/softwares/glucose-syrup-4.1.tgz
RUN tar -xvzf glucose-syrup-4.1.tgz
RUN ls
RUN cd glucose-syrup-4.1/simp/ && make -j 

ENTRYPOINT ["glucose-syrup-4.1/simp/glucose"]

