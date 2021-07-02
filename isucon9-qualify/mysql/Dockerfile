FROM mysql:8.0.25

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=isucari
ENV MYSQL_USER=isucari
ENV MYSQL_PASSWORD=isucari

ADD ./mysql/my.cnf /etc/mysql/conf.d/my.cnf

WORKDIR /docker-entrypoint-initdb.d
ADD ./isucon9-qualify/webapp/sql/00_create_database.sql ./
ADD ./isucon9-qualify/webapp/sql/01_schema.sql ./
ADD ./isucon9-qualify/webapp/sql/02_categories.sql ./
ADD ./isucon9-qualify/webapp/sql/initial.sql ./