pip install --disable-pip-version-check --exists-action w -r requirements.txt
celery -A testimony purge -f
watchmedo auto-restart --directory=jixa --pattern=*.py --recursive -- celery -A testimony worker --concurrency=3 -Ofair -E -l info
