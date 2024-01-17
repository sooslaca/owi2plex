#!/bin/sh

if [ "$HOST" = "" ]; then
  echo "Empty HOST!"
  exit 1
fi

if [ "$BOUQUET" = "" ]; then
  echo "Empty BOUQUET name!"
  exit 1
fi

if [ "$OUT" = "" ]; then
  echo "Empty OUT filename!"
  exit 1
fi

cd /
/owi2plex.py -h ${HOST} -b "${BOUQUET}" -o "${OUT}"
