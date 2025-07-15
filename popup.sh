#!/usr/bin/env bash

tmux if-shell "tmux has-session -t qT-Popup" "run-shell 'exit 0'" "new-session -c '#{pane_current_path}' -d -s qT-Popup"

tmux set -t qT-Popup status off
tmux display-popup -w 85% -h 85% -e 'TMUX=' -T SUSTITLE -E "tmux attach-session -t qT-Popup"
