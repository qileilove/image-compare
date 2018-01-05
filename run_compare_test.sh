#!/usr/bin/env bash
pkill -f "(chrome)?(--headless)"
rm -rf backstop_data/$1_bitmaps_test
./node_modules/backstopjs/cli/index.js test --config=$1
