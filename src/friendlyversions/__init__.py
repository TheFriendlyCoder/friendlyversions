"""module definition for main package"""
import logging
import os
import ast

_CUR_FILE = os.path.realpath(__file__)
_CUR_PATH = os.path.split(_CUR_FILE)[0]
with open(os.path.join(_CUR_PATH, 'version.prop')) as fh:
    _PROPS = fh.read()
__version__ = ast.literal_eval(_PROPS)

logging.getLogger(__name__).addHandler(logging.NullHandler())
