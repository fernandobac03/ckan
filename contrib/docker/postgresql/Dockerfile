FROM postgres:latest
MAINTAINER Open Knowledge

# Customize default user/pass/db
ENV POSTGRES_USER ckan
ENV POSTGRES_PASSWORD ckan
ENV POSTGRES_DB ckan

# Install DataStore
COPY /initDataStore.sh /docker-entrypoint-initdb.d/
COPY /set_permissions.sql /docker-entrypoint-initdb.d/


