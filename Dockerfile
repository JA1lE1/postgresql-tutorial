FROM postgres:9.6

MAINTAINER ja1le1 <812126839qq@gmail.com>

RUN apt-get update && apt-get install -y vim \
                        git \
                        vim \
                        zip \
                        wget

RUN wget https://pg.sjk66.com/static/attach/download-sample-database/dvdrental.zip && \
        unzip dvdrental.zip

RUN psql -U postgres && \
    CREATE DATABASE dvdrental && \
    \q

RUN pg_restore -U postgres -d dvdrental dvdrental.tar

