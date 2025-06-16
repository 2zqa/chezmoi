#!/bin/sh
initial_dump=$(mktemp)
dconf dump / > "$initial_dump"

read -p "Press enter to continue"

new_dump=$(mktemp)
dconf dump / > "$new_dump"

diff "$initial_dump" "$new_dump"
rm "$initial_dump" "$new_dump"

