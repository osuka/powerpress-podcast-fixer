# Parser for radio podcast

Simple scraper that can extract valid RSS podcast feeds for sites using
PowerPress (WordPress plugin) to generate feeds when there are issues
with the podcast entries.

Walks through all available pages (if paged) and then generates an RSS feed with
all episodes found, ignoring ones for which media is in the wrong format or missing,
which seems to be breaking PowerPress generation.

Uses:

* [feedgen](https://github.com/lkiesow/python-feedgen) to generate RSS
* [lxml](https://github.com/lxml/lxml) to parse HTML

## Setup

Install a virtual environment [as usual](https://packaging.python.org/tutorials/installing-packages/#creating-and-using-virtual-environments)

```sh
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Usage

Just execute `python ./parse.py`.
Modify/change the code to word with other sites.
