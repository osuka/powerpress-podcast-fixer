#!/usr/bin/env bash
docker run --rm -it -v /app/.venv -v $(pwd):/app -w /app ghcr.io/astral-sh/uv:python3.14-rc-bookworm uv $@
