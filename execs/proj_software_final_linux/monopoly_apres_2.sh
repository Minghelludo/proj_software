#!/bin/sh
echo -ne '\033c\033]0;Monopoly\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/monopoly_apres_2.x86_64" "$@"
