#Restarts apache services

#!/bin/sh

ps auxw | grep apache2 | grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/apache2 start > /dev/null
fi

ps auxw | grep httpd | grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/httpd start > /dev/null
fi
