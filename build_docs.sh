#!/bin/bash

set -e
PACKAGE_NAME=LightAutoML_LAMA
source ./automl_venv/bin/activate

#Build docs
cd docs
mkdir -p _static
make clean html
cd ..

echo "===== Start check_docs.py ====="
python check_docs.py
