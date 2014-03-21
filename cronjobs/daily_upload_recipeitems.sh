#!/usr/bin/env bash

# NOTE: setting this up will require your own S3 keys; need to change bucket
# name as well!!!

cd ~vagrant
NEWEST=$(ls -lrt | awk '/recipeitems.json.gz/ { f=$NF };END{ print f }')
s3cmd -P put $NEWEST s3://openrecipes
s3cmd -P put $NEWEST s3://openrecipes/recipeitems-latest.json.gz