FROM postgres:12-alpine


ENV POSTGRES_DB=djangogram_db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=superpass

COPY ./create_my_user_and_db.sql /docker-entrypoint-initdb.d/create_my_user_and_db.sql
