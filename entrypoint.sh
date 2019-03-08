#!/bin/sh


# shellcheck disable=SC2086
cp -R /opt/node/* /home/node/
chown node:node /home/node/
npm install > /dev/null

exec wait-for --timeout "${WAIT_FOR_TIMEOUT:-10}" $WAIT_FOR_HOSTS -- \
    run-nightwatch   
