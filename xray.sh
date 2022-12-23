#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1ee7e60f-1ee2-4553-8b18-f60e6ab3e433"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

