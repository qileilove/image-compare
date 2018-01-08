#!/usr/bin/env bash
pkill -f "(chrome)?(--headless)"
rm -rf backstop_data/${MARKET}_bitmaps_test
./node_modules/backstopjs/cli/index.js test --config=${MARKET}
