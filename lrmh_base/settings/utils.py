# coding: utf-8
import os

from distutils.util import strtobool
from django.core.exceptions import ImproperlyConfigured


def get_env_variable(name, default=None):
    """
    Returns value of the "name" environment variable or raise exception
    """
    try:
        value = os.environ[name]
        try:
            value = strtobool(value)
        except:
            pass
        return value
    except KeyError as e:
        if default is None:
            raise ImproperlyConfigured("%s environment variable is mandatory." % e.message)
        return default
