Overview
========

Usage
-----

For usage run::

 # vbackup --help

For a list of backup methods (scripts) run::

 # vbackup --list

To get some information about a module run::

 # vbackup --help <module>

example::

 # vbackup --help xfsdump


High level overview
-------------------

vbackup runs by scanning a configuration directory for configuration files.
This directory has a vbackup.conf file and a series of config files that
dictate what vbackup should do. For example, one may indicate that a
PostgreSQL database should be backed up, the next one can indicate that
/home should be backed up and a final one would instruct vbackup to copy
the backups to a remote system using scp.

Each strategy's configuration is stored under /etc/vbackup:

    * The default strategy (i.e. the one with no name) is the one stored at
      /etc/vbackup/rc.d
    * Each named strategy is stored under /etc/vbackup/rc.<strategy>.d

See :doc:`how` for more details.

