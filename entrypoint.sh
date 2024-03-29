#!/bin/zsh

if [[ -z $REVERSE_PROXY ]]; then
    ttyd -W -p 3000 -t enableTrzsz=true -t fontSize=16 -S -C /etc/cert.pem -K /etc/key.pem zsh
else
    ttyd -W -p 3000 -t enableTrzsz=true -t fontSize=16 zsh
fi
