#!/bin/bash

artifacts_location=$1
artifacts_location_sas_token=$2

# Configure Spinnaker for DockerHub
sudo wget -O /opt/spinnaker/config/clouddriver-local.yml "${artifacts_location}resources/docker_only.yml${artifacts_location_sas_token}"

# Restart spinnaker so that config changes take effect
sudo restart spinnaker