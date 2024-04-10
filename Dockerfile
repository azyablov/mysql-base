FROM mysql:8.2.0
LABEL maintainer="Anton Zyablov"\
    org.label-schema.name="azyablov/mysql_base"\
    org.label-schema.description="mysql base image"\
    org.label-schema.vendor="Anton Zyablov, Nokia"\
    org.label-schema.version="0.1"\
    org.label-schema.schema-version="1.0"\
    org.label-schema.docker.cmd="docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 --name mysql -d mysql:latest"
RUN mkdir -p /etc/mysql/certs

