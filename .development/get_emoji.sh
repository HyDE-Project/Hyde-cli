#!/bin/env bash

emojiDB=$(dirname $(dirname $(realpath ${0})))/Configs/emoji.db
 curl -sL https://raw.githubusercontent.com/muan/emojilib/v3.0.12/dist/emoji-en-US.json |\
  jq -r '. | to_entries | .[] | .key + " " + (.value | join(" ") | sub("_"; " "; "g"))' \
  > ${emojiDB}

echo "populated to  ${emojiDB}" 