# Sample PostgreSQL (pgsql) configuration file
#
# $Id$
#
# You may want to add a user named backup and do:
#
#	TODO:
#

# The username to use (required)
PGUSER="backup"

# A username to su to when performing the backup
#SUUSER="postgres"

# The password passed as an environment variable.
# This is insecure. Anyone will be able to get this password!
#PASSWORD='1234'

# path to psql Executable
#PSQL='/usr/bin/psql'

# Path to pgdump executable
#PGDUMP='/usr/bin/pgdump'

# Databases to backup. A space seperated list of databases
# Use - to backup all available databases
DATABASES="-"

# The destination directory
#DESTDIR="/tmp/backup/pgsql/%D1%"

