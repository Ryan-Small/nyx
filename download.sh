#!/usr/bin/env bash

DOWNLOADS_PATH="downloads"


#
# Install StarCraftII
#
GAMES_PATH="${DOWNLOADS_PATH}/game"

#wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/Linux/SC2.4.1.2.60604_2018_05_16.zip
#unzip -P iagreetotheeula downloads/SC2.4.1.2.60604_2018_05_16.zip -d ${GAMES_PATH}


#
# Download StarCraftII Maps and unpack them.
# The unzip command will prompt if they already exist.
#
MAPS_PATH="${DOWNLOADS_PATH}/maps"

wget -P ${DOWNLOADS_PATH} https://github.com/deepmind/pysc2/releases/download/v1.2/mini_games.zip
unzip ${DOWNLOADS_PATH}/mini_games.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Melee.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2017Season1.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2017Season2.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3_Updated.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2017Season3_Updated.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season4.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2017Season4.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2018Season1.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2018Season1.zip -d ${MAPS_PATH}

wget -P ${DOWNLOADS_PATH} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2018Season2_Updated.zip
unzip -P iagreetotheeula ${DOWNLOADS_PATH}/Ladder2018Season2_Updated.zip -d ${MAPS_PATH}

