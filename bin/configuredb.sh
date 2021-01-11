#!/bin/bash

database="monstersdb"
echo "Configuring DB: $database"

dropdb -U node_user monstersdb
createdb -U node_user monstersdb

psql -U evantwidwell < ./bin/sql/monsters.sql

echo "$database configured"