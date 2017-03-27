#!/bin/bash

#	psql -c "CREATE ROLE datastore_default WITH PASSWORD 'ckan'"
#	psql -c "CREATE DATABASE datastore_default OWNER $DB_ENV_POSTGRES_USER;"


psql -U postgres -c "CREATE ROLE datastore_default WITH PASSWORD 'ckan'"
psql -U postgres -c "CREATE DATABASE datastore_default owner ckan"
#psql -U postgres -f set_permissions.sql datastore_default





