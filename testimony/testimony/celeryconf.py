from __future__ import absolute_import
import os
from celery import Celery
from django.conf import settings

# set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'testimony.settings')

BROKER = "redis://testimony.prod.redis:6379"
if settings.DEBUG is True:
    BROKER = "redis://testimony.dev.redis:6379"

app = Celery('testimony', broker=BROKER)

# Using a string here means the worker will not have to
# pickle the object when using Windows.
CELERY_TIMEZONE = 'UTC'
app.config_from_object('django.conf:settings')
app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)
