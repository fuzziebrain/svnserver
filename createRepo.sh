#!/bin/bash

if [ -d "/var/svn/repos/$1" ]; then
    echo "Repository $1 already exists."
else
    echo "Creating repo: $1";

    svnadmin create /var/svn/repos/${1};
    svn import /var/svn/template file:///var/svn/repos/${1} -m "Create initial SVN structure";
    chown -R apache:apache /var/svn/repos/${1};
fi
