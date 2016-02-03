VBackup - A modular backup utility
==================================

vbackup is an extensible CLI backup tool. Ultimately it is a collection of
scripts that perform backup of systems. It is based on bash and should support
most of the unices out there (if not then please report it as a bug).

From a user’s point of view, vbackup simplifies the backup process by
using just a config file for everything that otherwise would require
a custom made script.

Vbackup can backup:

    * Postgresql databases
    * MySQL databases
    * Filesystems using GNU tar
    * XFS filesystems using xfsdump
    * dpkg and RPM databases
    * MBR, Partition tables, MD and LVM information
    * OpenLDAP database

The backup procedure is completely customizable and extendable.

vbackup supports multiple backup strategies and each one can supports
multiple levels. For example, one can have a backup strategy for filesystem
backups and another for VM backups or for testing

