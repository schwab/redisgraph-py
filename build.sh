#!/bin/bash
rm ./dist/redisgraph*.*
#mkdir ./dist
echo "building..."
python3 setup.py sdist bdist_wheel && FNAME=dist/`python3 setup.py --fullname`-py3-none-any.whl

echo "Installing $FNAME locally..."
pip3 install $FNAME --user