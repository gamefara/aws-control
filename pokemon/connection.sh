#!/bin/sh

. ../.env
ssh ubuntu@${POKEMON_IP} -i ~/.ssh/lightsail.pem
