#!/bin/bash -e

bundle check || bundle install

if [ $RAILS_ENV = 'production' ]
then
	echo "Precompiling assets...."
	rails assets:precompile

	echo "Copying assets to NGINX"
	mkdir -p /usr/share/nginx/html/$APP_NAME
	cp -R public/* /usr/share/nginx/html/$APP_NAME

	echo "Copying NGINX config"
	mkdir -p /etc/nginx/conf.d
	cp config/nginx.conf /etc/nginx/conf.d/$APP_NAME.conf
fi

if [[ -a /usr/src/app/tmp/pids/server.pid ]]; then
	echo "Removing stale PID file from /usr/src/app/tmp/pids/server.pid...."
	rm /usr/src/app/tmp/pids/server.pid
fi

rails s -b 0.0.0.0 -p 4002 -P /usr/src/app/tmp/pids/server.pid