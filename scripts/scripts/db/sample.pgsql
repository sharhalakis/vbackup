# Sample PostgreSQL (pgsql) configuration file
#
# $Id$
#

# The username to use (required)
PGUSER="backup"

# The host to connect to. Leave it empty if it is a local connection
# Default: empty
# PGHOST=""

# The port to conenct to. Empty means to not specify a port
# Default: empty
# PGPORT=5432

# A username to su to when performing the backup
# This is the most secure way of performing backups. Either use this or
# supply a password. It is preffered to have a UNIX user that can connect to
# postgresql database as an administrative user without requiring a password.
# You can do this either by modifying pg_hba.conf or by using ~/.pgpass.
# See the PostgreSQL Documentation for more information.
#SUUSER="postgres"

# The password passed as an environment variable.
# This is insecure. Anyone will be able to get this password!
#PASSWORD='1234'

# path to psql Executable (optional)
# Default is to look at $PATH
#PSQL='/usr/bin/psql'

# Path to pgdump executable (optional)
# Default is to look at $PATH
#PGDUMP='/usr/bin/pg_dump'

# Databases to backup. A space seperated list of databases
# Use - to backup all available databases
DATABASES="-"

# The destination directory (required)
DESTDIR="pgsql/%D1%"

# Include create database statements (yes/no)
# Default: yes
#CREATEDB="yes"

# Dump global objects to this filename
# Global objects will not be dumped if this is defined to be '-'
# Default is "globals". You'll need to change this if you have a database
# named like this.
# Default: globals
#GLOBALS="globals"

# Dump template[1-9] databases too. Database template0 is never dumped since 
# it is not needed and postgresql does not allow it
# Default: yes
#ALL="yes"

