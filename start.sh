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
                        "id": "80cb5658-97d3-4b18-8085-2f5da21a4b66",
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