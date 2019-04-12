#!/bin/sh
# pip install --user -r /app/requirements.txt
# python manage.py migrate
gunicorn --workers=3 --bind 0:8000 djangosample.wsgi