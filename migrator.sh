#!/bin/bash
host=$1
port=$2
user=$3
pass=$4
db=$5

[ -z "$host" ] || \
[ -z "$port" ] || \
[ -z "$user" ] || \
[ -z "$pass" ] || \
[ -z "$db" ] && echo "provide host, port, user, pass and db name" && exit 1

echo "Operating on: postgres://$user:XXXX@$host:$port/$db"
export DATABASE_URL="postgres://$user:$pass@$host:$port/$db"
yarn run migrate up
