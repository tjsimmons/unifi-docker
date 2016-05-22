FROM ubuntu:16.04
MAINTAINER T.J. Simmons <tj@tjsimmons.net>

COPY sources.list /etc/apt/sources.list

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
RUN apt-get update && apt-get install -y unifi supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT ["/usr/bin/supervisord"]
