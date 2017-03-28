#!/bin/bash

set -e


cd /usr/lib/ckan/default/src
git clone https://github.com/ckan/ckanext-basiccharts.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-basiccharts
python setup.py install


