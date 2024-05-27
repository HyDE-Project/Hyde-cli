#!/bin/env bash

#? This isn ot optimized or something so don't read this or you'll get hurt

WORKSPACE=$(dirname $(dirname $(realpath ${0})))

git describe --tags --abbrev | cut -d'-' -f1 | sed 's/^v//' > ${WORKSPACE}/version.txt && echo "[generated] version.txt "

echo -e "\n"

Hyde man | sed '/^Hyde Clone Directory:/d' | sed '/Hyde-cli Version/d' |  sed 's/\x1b\[[0-9;]*m//g' |  sed 's/ﯦ/💡/g'    > ${WORKSPACE}/USAGE && echo [generated] Hyde Usage

echo -e "\n\n\n" >> ${WORKSPACE}/USAGE
Hyde-tool man | sed '/^Hyde Clone Directory:/d' | sed '/Hyde-cli Version/d' |  sed 's/\x1b\[[0-9;]*m//g' |  sed 's/ﯦ/💡/g'      >> ${WORKSPACE}/USAGE && echo [generated] Hyde-tool Usage

${WORKSPACE}/shell-completions/complgen.sh  