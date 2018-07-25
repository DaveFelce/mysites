#!/bin/bash

logfile="estateagent.log"
if [ -f $logfile ] ; then
    rm $logfile
fi
touch $logfile
chmod 644 $logfile
chown www-data $logfile
chown www-data /webapp
chown www-data media

# Webapp commands
python3 manage.py makemigrations
./wait-for-it.sh postgres:5432 -- echo "Postgres is up for uwsgi and nginx"
python3 manage.py migrate                  # Apply database migrations
python3 manage.py loaddata fixtures/latest.json
python3 manage.py collectstatic --noinput  # Collect static files
exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
