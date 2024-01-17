#!/bin/sh

if [ ! "$@" = "cron" ]; then
  exec $@
fi

exec crond -l 2 -f
