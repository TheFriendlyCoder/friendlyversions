#!/bin/bash -e
virtualenv -p python2 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/python2.reqs
deactivate
rm -rf tmp

virtualenv -p python3 tmp
source ./tmp/bin/activate
pip install -e .[dev]
pip freeze --exclude-editable > ./tests/python3.reqs
deactivate
rm -rf tmp
