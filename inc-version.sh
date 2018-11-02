#!/bin/bash

increment_version() {
 echo $1
 echo $2
 local v=$1
 local rgx='^((?:[0-9]+\.)*)([0-9]+)($)'
 val=`echo -e "$v" | perl -pe 's/^.*'$rgx'.*$/$2/'`
 echo "$v" | perl -pe s/$rgx.*$'/${1}'`printf %0${#val}s $(($val+1))`/ > $2/version.txt
}

increment_version $(cat $1/version.txt) $1
