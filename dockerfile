FROM ubuntu:mantic-20240427
USER root
RUN apt update && apt upgrade
RUN apt-get install -y wget tini
RUN wget "https://www.serposcope.com/downloads/3.4/serposcope_3.4_amd64.deb" && dpkg -i serposcope_3.4_amd64.deb
EXPOSE 6333
WORKDIR /usr/share/serposcope
CMD [ "./serposcope.sh" ]