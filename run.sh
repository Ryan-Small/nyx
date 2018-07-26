#!/usr/bin/env bash

CURRENT_DIRECTORY=$(pwd)

docker run \
    -it \
    -v ${CURRENT_DIRECTORY}/downloads/game:/usr/games \
    -v ${CURRENT_DIRECTORY}/downloads/maps:/usr/games/StarCraftII/Maps \
    nyx \
    /bin/bash
