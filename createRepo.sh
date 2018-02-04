#!/bin/bash

echo "Creating repo: " . $1

svnadmin create /var/svn/repos/${1}
svn import /var/svn/template file:///var/svn/repos/${1} -m "Create initial SVN structure"