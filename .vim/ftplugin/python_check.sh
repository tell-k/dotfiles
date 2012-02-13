#!/bin/sh

#required pyflakes ex) pip install pyflakes
echo '------------- pyflakes'
pyflakes $1
#required pep8 ex) pip install pep8
echo '------------- pep8'
pep8 $1
