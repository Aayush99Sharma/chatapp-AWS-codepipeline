#!/bin/bash

set -e

APP_DIR="/new_chatapp"
VENV_DIR="$APP_DIR/venv"

cd $APP_DIR

# Activate virtual environment and install dependencies
source $VENV_DIR/bin/activate
pip install -r requirements.txt

# Run migrations
cd fundoo
python manage.py makemigrations
bash ~/run_migrate.sh  # Replace with your migration script