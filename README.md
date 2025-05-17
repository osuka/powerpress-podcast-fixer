# Parser for radio podcast

Simple scraper that can extract valid Atom/RSS podcast feeds for sites using
PowerPress (WordPress plugin) to generate feeds when there are issues
with the podcast entries.

Walks through all available pages (if paged) and then generates an Atom/RSS feed with
all episodes found, ignoring ones for which media is in the wrong format or missing,
which seems to be breaking PowerPress generation.

Uses:

* [feedgen](https://github.com/lkiesow/python-feedgen) to generate Atom/RSS
* [lxml](https://github.com/lxml/lxml) to parse HTML

## Setup

* This project is setup so that all building/executing is done inside docker containers

* Uses [uv](https://docs.astral.sh/uv/) inside of docker, downloads/creates venv in a docker volume

## Usage

To build and run

```sh
docker rm local/podcastfixer || echo "First build"
docker build . -t local/podcastfixer

docker run \
    --rm \
    -w /app \
    --volume .:/app \
    --volume /app/.venv \
    $INTERACTIVE \
    local/podcastfixer \
    python ./parse.py
```

> Note that since .venv is in a volume it avoids
> common dependency conflicts, dynamic loading in nix etc

Modify/change the code to work with other sites.

For running uv commands (eg add dependencies):

```sh
# ./uv-docker.sh {{COMMAND}}
# like ./uv-docker.sh add xxxxxxx
```
