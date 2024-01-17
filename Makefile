BASEDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
.PHONY: all

all: build

build:
	@docker build --progress=plain -t sooslaca/owi2plex $(BASEDIR)
