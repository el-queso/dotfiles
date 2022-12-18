#!/usr/bin/env bash

tmux neww bash -c "curl -s https://wttr.in/ | less"
