#!/bin/sh

#required PHP_CodeSniffer
phpcs --standard=Zend $1
php -l $1
