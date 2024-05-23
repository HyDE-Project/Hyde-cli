#!/bin/env bash

WORKSPACE=$(dirname $(dirname $(realpath ${0})))


git describe --tags --abbrev | cut -d'-' -f1 > ${WORKSPACE}/version.txt && echo "[generated] version.txt "
