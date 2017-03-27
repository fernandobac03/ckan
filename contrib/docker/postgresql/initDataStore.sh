#!/bin/bash

psql -U postgres -c "CREATE ROLE datastore_default WITH PASSWORD 'ckan'"
psql -U postgres -c "CREATE DATABASE datastore_default owner ckan"






