#!/bin/sh

chown symfony:symfony -R /var/data

exec "$@"