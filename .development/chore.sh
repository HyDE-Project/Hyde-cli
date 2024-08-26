#!/bin/env bash

#? This isn ot optimized or something so don't read this or you'll get hurt

WORKSPACE=$(dirname $(dirname $(realpath ${0})))

git describe --tags --abbrev | cut -d'-' -f1 | sed 's/^v//' > ${WORKSPACE}/version.txt && echo "[generated] version.txt "

echo -e "\n"

echo -e '```' >> ${WORKSPACE}/USAGE.md
Hyde man | sed '/^Hyde Clone Directory:/d' | sed '/Hyde-cli Version/d' |  sed 's/\x1b\[[0-9;]*m//g' |  sed 's/ﯦ /💡/g' | sed 's/﬌/↪️/g'     > ${WORKSPACE}/USAGE.md && echo [generated] Hyde Usage.md

echo -e "\n\n\n" >> ${WORKSPACE}/USAGE.md
Hyde-tool man | sed '/^Hyde Clone Directory:/d' | sed '/Hyde-cli Version/d' |  sed 's/\x1b\[[0-9;]*m//g' |  sed 's/ﯦ /💡/g' | sed 's/﬌/↪️/g'      >> ${WORKSPACE}/USAGE.md && echo [generated] Hyde-tool Usage.md
echo -e '```' >> ${WORKSPACE}/USAGE.md

${WORKSPACE}/shell-completions/complgen.sh  
