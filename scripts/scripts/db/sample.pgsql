# Sample PostgreSQL (pgsql) configuration file
#
# $Id$
#

# The host to connect to. Leave it empty if it is a local connection
# Defaults to: empty
PGHOST=""

# The port to connect to. Empty means not to specify a port
# Defaults to: empty
# Default PostgreSQL port is 5432
PGPORT=""

# A username to su to when performing the backup
# This is the most secure way of performing local backups. Either use this or
# supply a password. It is preffered to have a UNIX user that can connect to
# postgresql database as an administrative user without requiring a password.
# You can do this either by modifying pg_hba.conf or by using ~/.pgpass.
# See the PostgreSQL Documentation for more information.
# For Debian systems, user "postgres" will do the job automagically.
SUUSER="postgres"

# The username to use (required)
# This is the database user to connect as
PGUSER="postgres"

# The password passed as an environment variable.
# This is insecure. Anyone will be able to get this password!
# Leave it empty if you specified a SUUSER
#PASSWORD='1234'

# Databases to backup. A space seperated list of databases
# Use - to backup all available databases
DATABASES="-"

# The destination directory (required)
DESTDIR="pgsql/"

# Include create database statements (yes/no)
# Defaults to: yes
CREATEDB="yes"

# Dump global objects to this filename
# Global objects will not be dumped if this is defined to be '-'
# Default is "globals". You'll need to change this if you have a database
# named like this.
# Default: globals
GLOBALS="globals"

# Dump template[1-9] databases too. Database template0 is never dumped since 
# it is not needed and postgresql does not allow it
# Default: yes
ALL="yes"

