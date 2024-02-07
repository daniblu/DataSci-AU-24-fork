#!/bin/bash

# Get the directory of the Bash script
scriptDir=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")

# Activate the virtual environment
source "$scriptDir/env/bin/activate"

# Install kernel for notebooks
python -m ipykernel install --user --name=env

# Setup Git
git config --global user.email "mr.daniblu@gmail.com"
git config --global user.name "daniblu"
git config --global pull.rebase false # think this is necessary to enable pulling from Roberta's repo

echo "Done!"