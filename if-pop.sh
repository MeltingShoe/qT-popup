#!/usr/bin/env bash

if [ $(tmux display -p '#{session_name}') == "qT-Popup" ]; then
  tmux detach -s "qT-Popup"
else
  ~/qt-popup/./popup.sh
fi
