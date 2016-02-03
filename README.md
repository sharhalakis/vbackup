# VBackup - A modular backup utility

The full documentation of vbackup can be found at:
http://vbackup.readthedocs.org/

# Overview
vbackup is an extensible CLI backup tool. Ultimately it is a collection of
scripts that perform backup of systems. It is based on bash and should support
most of the unices out there (if not then please report it as a bug).

From a user's point of view, vbackup simplifies the backup process by
requiring a config file for everything that otherwise would require a
custom made script.

Vbackup can backup:

  * Postgresql databases
  * MySQL databases
  * Filesystems using GNU tar
  * XFS filesystems using xfsdump
  * dpkg and RPM databases
  * MBR, Partition tables, MD and LVM information
  * OpenLDAP database

The backup procedure is completely customizable and extendable by the user.

vbackup supports multiple backup strategies and each one can supports
multiple levels. For example, one can have a backup strategy for filesystem
backups and another for VM backups or for testing

# Sample
After configuring vbackup, backups become as simple as:

```
# vbackup 0
```

# Copyright

Copyright (c) 2006-2016 Harhalakis Stefanos

# License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Contact:
========

For bug reports, recommendations or anything else, send an email to
<v13@v13.gr>.

The latest vbackup can be found at:
https://github.com/sharhalakis/vbackup

vim: set ts=8 sts=4 sw=4 noet formatoptions=rtcn textwidth=79:

