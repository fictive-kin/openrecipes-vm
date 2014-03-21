#!/usr/bin/env bash
cd ~/src/openrecipes/scrapy_proj
scrapy list | grep -v .feed | xargs -I {} -p curl http://0.0.0.0:6800/schedule.json -d project=openrecipes -d spider={}