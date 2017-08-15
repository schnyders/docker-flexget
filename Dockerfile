FROM python:2.7-alpine
MAINTAINER Stephan Schnyder <stephan.schnyder@outlook.com>

ENV INSTALL_PATH /opt/flexget
ENV TZ=Europe/Zurich
ENV LOGLEVEL=info

RUN apk add -U tzdata

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
RUN pip install flexget

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/ash", "/entrypoint.sh"] 

#ENTRYPOINT ["flexget"]
#CMD ["--loglevel", "info", "daemon", "start", "--autoreload-config"]

EXPOSE 5050/tcp