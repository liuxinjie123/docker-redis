FROM ubuntu-1404
MAINTAINER hary <94093146@qq.com>

ENV REDIS_USER=redis \
    REDIS_DATA_DIR=/var/lib/redis \
    REDIS_LOG_DIR=/var/log/redis

EXPOSE 6379/tcp

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 6379/tcp

VOLUME ["${REDIS_DATA_DIR}"]

ENTRYPOINT ["/sbin/entrypoint.sh"]
