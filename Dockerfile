# karaf dockerfile
FROM alpine:latest
MAINTAINER jurica.borozan@bspayone.com
RUN apk add --no-cache maven wget
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
RUN mkdir -p /opt
RUN wget -qO- http://ftp.halifax.rwth-aachen.de/apache/karaf/4.1.5/apache-karaf-4.1.5.tar.gz | tar xz -C /opt
EXPOSE 1099 8101 44444
ENTRYPOINT ["/opt/apache-karaf-4.1.5/bin/karaf", "server"]