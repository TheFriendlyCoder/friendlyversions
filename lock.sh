#!/bin/bash -e
virtualenv -p python2 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/python2_deps.txt
deactivate
rm -rf tmp

virtualenv -p python3 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/python3_deps.txt
deactivate
rm -rf tmp
