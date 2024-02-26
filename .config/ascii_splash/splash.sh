#! /bin/sh
# ASCII art splash screen

this_dir=$(dirname $0)
art=$(find $this_dir -type f -name '*.art' \! -name '.*' | sort -R | head -1)
if [ -n "$art" ]; then cat "$art"; fi

# vim:ft=sh
