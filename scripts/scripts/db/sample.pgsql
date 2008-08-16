# Sample PostgreSQL (pgsql) configuration file
#
# $Id$
#

# The username to use (required)
PGUSER="backup"

# The host to connect to. Empty if it is a local connection
# Default: empty
# PGHOST=""

# The port to conenct to. Empty means to not specify a port
# Default: empty
# PGPORT=5432

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
#DESTDIR="pgsql/%D1%"

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

