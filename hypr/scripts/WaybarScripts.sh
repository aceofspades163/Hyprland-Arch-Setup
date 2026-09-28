#!/bin/bash

case "$1" in
    --nvtop)
        kitty -e nvtop
        ;;
    --btop)
        kitty -e btop
        ;;
    --nmtui)
        kitty -e iwctl
        ;;
    *)
        echo "Unknown option: $1"
        ;;
esac
