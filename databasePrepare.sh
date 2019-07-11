#!/bin/sh
createdb dvdrental;
pg_restore -U postgres -d dvdrental dvdrental.tar
psql dvdrental
\dt