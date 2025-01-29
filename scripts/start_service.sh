#!/bin/bash

set -e

sudo systemctl restart django.service
sudo systemctl status django.service