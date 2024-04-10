# Introduction

MySQL Docker and docker-compose to run development server in container.

# Dumping and Restoration

Creating database dumps

Most of the normal tools will work, although their usage might be a little convoluted in some cases to ensure they have access to the mysqld server. A simple way to ensure this is to use docker exec and run the tool from the same container, similar to the following:

$ docker exec some-mysql sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /some/path/on/your/host/all-databases.sql
Restoring data from dump files

For restoring data. You can use docker exec command with -i flag, similar to the following:

$ docker exec -i some-mysql sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < /some/path/on/your/host/all-databases.sql

# Connecting to DB

docker run -it --rm mysql:latest mysql -h <IP@> -P 3306 -u root -p

