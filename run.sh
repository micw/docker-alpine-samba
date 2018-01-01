#!/bin/bash

set -e

if [ ! -z "${USERS}" ]; then
  for USER in ${USERS}; do
    U_NAME=$( echo $USER | awk  -F ':' '{ print $1 }' )
    U_ID=$( echo $USER | awk  -F ':' '{ print $2 }' )
    echo "Creating user ${U_NAME} with UID ${U_ID}"
    adduser -h /var/empty -G users -s /bin/true -D -H -u ${U_ID} ${U_NAME}
  done
fi

smbd --foreground --log-stdout -d ${LOGLEVEL:0} < /dev/null
