#!/bin/bash
cd ~vagrant
mkdir src
cd ./src
rm -rf openrecipes
git clone https://github.com/fictivekin/openrecipes.git
cd ./openrecipes
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
scrapy -h
cd scrapy_proj/openrecipes
cp settings.py.default settings.py