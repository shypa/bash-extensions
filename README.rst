.. SPDX-License-Identifier: MIT

###############
bash-extensions
###############

This repository is meant to give me an easy and reproducible way to quickly
configure a new UNIX environment.

It contains the basics: a ``.bashrc``, a nice ``PS1``, some completion scripts,
and some bash functions I like to have at my disposal.

Installation
============

Dependencies:

- ``autoconf``
- ``automake``
- ``make``

.. warning::

   Running the following commands will create a few entries in your home
   directory, overwrite your ``.bashrc``, and potentially a few other files.

.. hint::

   You may want to ``export HOME=/tmp/some-directory`` before running this the
   first time.

.. code::

   autoreconf --install
   ./configure
   make install
