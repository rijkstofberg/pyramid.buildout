#!/bin/bash

echo 'Running tests'
bin/py setup.py test

echo '====== Running ZPTLint ======'
for pt in `find src/homebrud/ -name "*.pt"` ; do bin/zptlint $pt; done

echo '====== Running PyFlakes ======'
bin/pyflakes src/homebrud
bin/pyflakes setup.py
bin/pep8 fabfile.py

echo '====== Running pep8 =========='
bin/pep8 src/homebrud
bin/pep8 setup.py
bin/pep8 fabfile.py

