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
#DESTDIR="pgsql/%D1%"

# Include create database statements (yes/no)
# Default: yes
#CREATEDB="yes"

# Dump global objects to this filename
# Global objects will not be dumped if this is defined to be empty
# Default is "globals". You'll need to change this if you have a database
# named like this.
# Default: globals
#GLOBALS="globals"

# Dump template[1-9] databases too. Database template0 is never dumped since 
# it is not needed and postgresql does not allow ita
# Default: yes
#ALL="yes"

