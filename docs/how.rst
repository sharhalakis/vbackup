How it works
============

When you run::

 # vbackup 0

* The script enters directory /etc/vbackup/rc.d and searches for files named
  XX-name.module, where <XX> is a number and <module> is a backup
  module/method.
* All configurations are examined in an alphabetical order, so that the <XX>
  is used to indicate the order. These files apply to all backup levels.
* The script also checks for files named XX-name-level.module, where <level>
  is a certain level. These files apply only to that level and are ignored
  in other levels.
* For each configuration file, the corresponding module (<module>) is
  executed using the parameters of the configuration file. A module may be
  used from zero to many times. E.g. there can be many .tar files in there

The verbosity of the backup procedure may be controlled using the -d parameter.
Level 4 should let you know of any special cases while keeping everything
else for itself

Backups that fail will not stop the backup procedure. There are however some
errors that will stop everything (ex: when failing to mount a filesystem).
However, backups that fail will cause vbackup to exit with non 0 code.

DESTDIR0
--------

DESTDIR0 holds the destination directory. The name should be an absolute path.
Certain character sequences are translated during runtime:

%L%
  is replaced with the backup level, as specified in the command line.
  E.g. 1

%D0%
  is replaced by a number for each day of the week. Monday is 1, Sunday is 7

%D1%
  is replaced by YYMMDD where YY are the two last digits of the year, MM is
  the two-digit month number (e.g. 05 for May) and DD is the two-digit day
  of the month number

%D2%
  is replaced by YYMMDDHH where YYMMDD is as above and HH is the two digit
  24 hour-of-the-day number

%D3%
  is replaced by YYMMDDHHmm where YYMMDDHH is as above and mm is the two
  digit minutes number within the hour

For example, /mnt/backup/%D1%-%L% while create a separate backup directory per
day, per level, like this::

 drwxr-xr-x 8 v13 v13 70 Jun 28  2015 150628-1
 drwxr-xr-x 8 v13 v13 70 Jul 20  2015 150720-5
 drwxr-xr-x 8 v13 v13 70 Aug 18 01:23 150818-5

