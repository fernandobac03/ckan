#!/bin/bash
set -e



#Installing basiccharts extension
echo "Installing basiccharts extension   "
cd /usr/lib/ckan/default/src
git clone https://github.com/ckan/ckanext-basiccharts.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-basiccharts
python setup.py install

#Installing gallery extension
echo "Installing gallery extension from https://github.com/inia-es/ckanext-gallery-inia.git "
cd /usr/lib/ckan/default/src
git clone https://github.com/inia-es/ckanext-gallery-inia.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-gallery-inia
python setup.py install

#Installing ckanext-scheming: "https://github.com/inia-es/ckanext-scheming.git" fork from -> "https://github.com/ckan/ckanext-scheming" 
echo "Installing ckanext-scheming"
cd /usr/lib/ckan/default/src
git clone https://github.com/inia-es/ckanext-scheming.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-scheming
python setup.py develop
pip install -r requirements.txt

#Installing ckanext-repeating: "https://github.com/open-data/ckanext-repeating"
echo "Installing ckanext-repeating"
cd /usr/lib/ckan/default/src
git clone https://github.com/fernandobac03/ckanext-repeating.git
source /usr/lib/ckan/default/bin/activate
cd ckanext-repeating
python setup.py develop

#Installing ckanext-hierarchy - Organization hierarchy for CKAN:  https://github.com/datagovuk/ckanext-hierarchy
echo "Installing ckanext-hierarchy"
cd /usr/lib/ckan/default/src
source /usr/lib/ckan/default/bin/activate
pip install -e "git+https://github.com/datagovuk/ckanext-hierarchy.git#egg=ckanext-hierarchy"

#Installing ckanext-predataset- : from: https://github.com/inia-es/ckanext-predataset.git 
echo "Installing ckanext-predataset "
cd /usr/lib/ckan/default/src
source /usr/lib/ckan/default/bin/activate
git clone https://github.com/inia-es/ckanext-predataset.git
cd ckanext-predataset
python setup.py develop
pip install -r dev-requirements.txt

#Installing ckanext-dcat - rdf for ckan
echo "Installing ckanext-dcat"
source /usr/lib/ckan/default/bin/activate
cd /usr/lib/ckan/default/src
pip install -e "git+https://github.com/ckan/ckanext-dcat.git#egg=ckanext-dcat"
pip install -r ckanext-dcat/requirements.txt

##Installing ckanext-runtimeconfig: "
#echo "Installing ckanext-runtimeconfig"
#source /usr/lib/ckan/default/bin/activate
#cd /usr/lib/ckan/default/src
#git clone https://github.com/fernandobac03/ckanext-runtimeconfig.git
#cd ckanext-runtimeconfig
#python setup.py develop





