#!/bin/bash

echo "Enabling XDebug on port $XDEBUG_PORT_NUMBER"
export PHP_INI_ACTIVE=/opt/bitnami/php/lib/php.ini
sed -i -e 's/;xdebug.remote_port = 9000*/xdebug.remote_port = $XDEBUG_PORT_NUMBER/g' $PHP_INI_ACTIVE
sed -i -e 's/;xdebug.*/xdebug./g' $PHP_INI_ACTIVE
sed -i -e 's/;[XDebug] /[XDebug] /g' $PHP_INI_ACTIVE
sed -i -e 's/;zend_extension = xdebug*/zend_extension = xdebug/g' $PHP_INI_ACTIVE
