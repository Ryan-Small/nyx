# NYX

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

## Running Locally with a GUI

This approach has the advantages of rendering a GUI and making some
types of debugging easier. And it is always rewarding to watch your
agent dominate its foes.

1. Download the [Starcraft II game client](https://us.battle.net/account/download/?show=sc2).

2. Then follow [Blizzard's instructions](https://github.com/Blizzard/s2client-proto/blob/master/README.md#map-packs)
to download and install the map packs.

3. Create a new virtual environment.
```bash
python3 -m venv venv
```

4. Activate the virtual environment
```bash
source ./venv/bin/activate
```

5. Install Python dependencies.
```bash
pip install -r requirements.txt
```

6. Run the agent.
```bash
python3 ./src/agent.py
```


## Running in Linux without a GUI

This approach of running has the advantages of not rendering a GUI which
can increase the the speed in which the game is played. Replays can be
saved and viewed later which may be helpful for debugging.

1. Download Starcraft II and the map packs by running the download script.
```bash
./download.sh
```

2. Build the Docker container using Docker-Compose.
```bash
docker-compose build
```

3. Run the Docker container using Docker-Compose.
```bash
docker-compose up
```

4. Stop the container when you're done.
```bash
docker-compose down
```
