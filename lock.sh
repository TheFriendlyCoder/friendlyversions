#!/bin/bash -e
virtualenv -p python2 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/reqs2.txt
deactivate
rm -rf tmp

virtualenv -p python3 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/reqs3.txt
deactivate
rm -rf tmp
