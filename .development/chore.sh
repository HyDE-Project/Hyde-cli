#!/bin/env bash

WORKSPACE=$(dirname $(dirname $(realpath ${0})))

git describe --tags --abbrev | cut -d'-' -f1 | sed 's/^v//' > ${WORKSPACE}/version.txt && echo "[generated] version.txt "
