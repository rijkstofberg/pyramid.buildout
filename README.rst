===============
HOW TO USE THIS
===============

Checkout the basic files
========================

::

    $ git clone http://github.com/rijkstofberg/pyramid.buildout.git <project>
    $ cd <project>


Customize
=========

 * Use search&replace to replace all placeholder strings with meaningful ones:
 * Remove this entire paragraph ("How to use this") from README.rst.
 * Start coding :).


Initialize buildout and start paster
====================================

::

    $ virtualenv -p python2.7 --no-site-packages .
    $ ./bin/pip install setuptools --upgrade
    $ bin/python bootstrap.py -c development.cfg
    $ bin/buildout -Nvc development.ini
    $ bin/pserve etc/development.ini
