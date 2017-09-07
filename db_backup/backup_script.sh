#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function dump {
  ls $DIR
  docker exec mongo bash -c "cd /data/ && mongodump"
  docker cp mongo:/data/dump $DIR
}

function restore {
  ls $DIR
  docker cp $DIR/dump mongo:/data/
  docker exec mongo bash -c "cd /data/ && mongorestore --drop"
}

OPT1="Mongodb backup"
OPT2="Mongodb restore"

echo
PS3='Make a choice: '
options=("$OPT1" "$OPT2")
select opt in "${options[@]}"
do
    case $opt in
        "$OPT1")
            dump
            break
            ;;
        "$OPT2")
            restore
            break
            ;;
        *) echo invalid option;;
    esac
done
