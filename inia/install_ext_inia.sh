#!/bin/bash
set -e

#Installing basiccharts extension
echo "Installing basiccharts extension"
cd /usr/lib/ckan/default/src
git clone https://github.com/ckan/ckanext-basiccharts.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-basiccharts
python setup.py install

#Installing gallery extension
echo "Installing gallery extension from https://github.com/fernandobac03/ckanext-gallery-inia.git"
cd /usr/lib/ckan/default/src
git clone https://github.com/fernandobac03/ckanext-gallery-inia.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-gallery-inia
python setup.py install

#Installing ckanext-scheming, requeriment for ckanext-composite: "https://github.com/ckan/ckanext-scheming"
echo "Installing ckanext-scheming"
cd /usr/lib/ckan/default/src
source /usr/lib/ckan/default/bin/activate
pip install ckanext-scheming


#Installing ckanext-repeating, requeriment for ckanext-composite: "https://github.com/open-data/ckanext-repeating"
echo "Installing ckanext-repeating"
cd /usr/lib/ckan/default/src
git clone https://github.com/fernandobac03/ckanext-repeating.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-repeating
python setup.py install

##Installing ckanext-composite (metadata): "http://extensions.ckan.org/extension/composite/"
#echo "Installing ckanext-composite"
#source /usr/lib/ckan/default/bin/activate
#cd /usr/lib/ckan/default/src
#git clone https://github.com/espona/ckanext-composite.git
#cd ckanext-composite
#python setup.py develop
#pip install -r dev-requirements.txt

