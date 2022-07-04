MAKEFLAGS += --silent
.ONESHELL:
.SHELLFLAGS += -exo pipefail -O globstar -O nullglob

.PHONY: all build test
all: test

build:
	deno compile -o ./dist/reproduce -A reproduce.ts

test: build
	./dist/reproduce