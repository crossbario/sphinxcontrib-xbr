"""
    sphinxcontrib.xbr
    ~~~~~~~~~~~~~~~~~

    XBR IDL for Sphinx

    :copyright: Copyright 2017 by Crossbar.io Technologies GmbH <support@crossbario.com>
    :license: BSD, see LICENSE for details.
"""

import pbr.version

if False:
    # For type annotations
    from typing import Any, Dict  # noqa
    from sphinx.application import Sphinx  # noqa

__version__ = pbr.version.VersionInfo('xbr').version_string()


def setup(app):
    # type: (Sphinx) -> Dict[unicode, Any]
    return {'version': __version__, 'parallel_read_safe': True}
