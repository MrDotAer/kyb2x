#!/bin/bash

# Set config file
cat <<EOF >/config.json
{
    "log": {
        "loglevel": "none"
    },
    "inbounds": [
        {
            "listen": "0.0.0.0",
            "port": 8080,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "0bea0fa9-06bb-4bd5-88c6-6ab8ccb8ec76",
                        "alterId": 0
                    }
                ],
                "disableInsecureEncryption": false
            },
            "streamSettings": {
                "network": "ws"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF

/usr/local/bin/xray -config=/config.json
