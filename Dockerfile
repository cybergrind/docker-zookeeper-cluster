# start script from digitalwonderland/base:latest
# fixed base image
FROM java:8
MAINTAINER cybergrind@gmail.com
COPY ./src /
RUN chmod +x /usr/local/sbin/start.sh

ENV ZOOKEEPER_VERSION 3.4.8
RUN curl -sS http://mirrors.sonic.net/apache/zookeeper/current/zookeeper-${ZOOKEEPER_VERSION}.tar.gz | tar -xzf - -C /opt \
  && mv /opt/zookeeper-* /opt/zookeeper \
  && chown -R root:root /opt/zookeeper

RUN groupadd -r zookeeper \
  && useradd -c "Zookeeper" -d /var/lib/zookeeper -g zookeeper -M -r -s /sbin/nologin zookeeper \
  && mkdir /var/lib/zookeeper \
  && chown -R zookeeper:zookeeper /var/lib/zookeeper

EXPOSE 2181 2888 3888

VOLUME ["/opt/zookeeper/conf", "/var/lib/zookeeper"]

ENTRYPOINT ["/usr/local/sbin/start.sh"]
