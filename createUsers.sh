#!/bin/bash
# First argument
TOTAL_NUM_USERS=${1:-20}

for i in $(seq -f "user%02g" 1 $TOTAL_NUM_USERS);
    do htpasswd -b /etc/svn/svn-auth $i $i;
    echo -e >> /etc/svn/svn-acl.conf;
    echo "$i = rw" >> /etc/svn/svn-acl.conf;
done