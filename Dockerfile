FROM aergus/latex
RUN apt-get install -y curl

ADD . hadron-diagrams/
WORKDIR /hadron-diagrams/
