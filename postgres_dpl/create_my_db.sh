#!/bin/sh

postgres psql -c "CREATE USER my_user WITH PASSWORD 'my_password';"
postgres psql -c "CREATE DATABASE djangogram_db WITH OWNER=my_user;"
