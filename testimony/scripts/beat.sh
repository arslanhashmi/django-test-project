pip install --disable-pip-version-check --exists-action w -r requirements.txt
pip install ephem
watchmedo auto-restart --directory=/jixa/ --pattern=*.py --recursive -- celery -A testimony beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler
