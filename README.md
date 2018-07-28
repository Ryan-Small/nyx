
<p align="center" style="color:#7a1306;font-size:38px">NYX</p>

![Python](https://img.shields.io/badge/python-v3-blue.svg)
[![Build Status](https://travis-ci.org/rsmall/nyx.svg?branch=master)](https://travis-ci.org/rsmall/nyx)

## Overview
[Nyx](https://github.com/rsmall/nyx) is a project designed for exploring
various approaches to Machine Learning. It leverages [DeepMind](http://deepmind.com)'s
[PySC2](https://github.com/deepmind/pysc2) wrapper for the Starcraft II
Learning Environment (SC2LE).


## Requirements
- Python3
- Starcraft 2
- Docker
- Docker-Compose


## Running in Linux without a GUI
Download StarcraftII and the map packs by running the download script.
```bash
./download.sh
```

Build the Docker container using Docker-Compose.
```bash
docker-compose build
```

Run the Docker container using Docker-Compose.
```bash
docker-compose up
```

Stop the container when you're done.
```bash
docker-compose down
```


## Running Locally with a GUI

1. Download the [Starcraft II game client](https://us.battle.net/account/download/?show=sc2).

2. Then follow [Blizzard's instructions](https://github.com/Blizzard/s2client-proto/blob/master/README.md#map-packs)
to download and install the map packs.

3. Run the agent.
```bash
python3 ./src/agent.py
```
