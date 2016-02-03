Setup
=====

Setup - the beginner's way
--------------------------

There is a wizard script that will help you create basic configuration files.
Most probably you will want to use it for the first time. For more advanced
configuration and fine-tuning you will have to adjust the configuration files
yourself. Read the rest of this file to fully understand how you can use
vbackup.

To launch the wizard run::

 # vbackup-wizard

and answer its questions. The wizard also serves as an introduction.

Note that this will only create basic backups, even though that may be
all that you need. For more advanced stuff you'll need to use the CLI
or the manual method

Setup - the CLI way
-------------------

A simple backup
^^^^^^^^^^^^^^^

Let's assume you want to:

    * Store backups under /mnt/backup/
    * Backup /home
    * Backup /etc
    * Backup your partition information in case disaster hits

Run the following and answer the questions properly. You change your config
later by editing config files by hand. ::

    # vbackup --rc --init
        # Enter "/mnt/backup/%L1%-%D%", without the quotes, for DESTDIR0
    # vbackup --rc --add 10-exist.exist     # Just press enter when asked
    # vbackup --rc --add 20-mbr.mbr         # Press enter on all questions
    # vbackup --rc --add 30-home.tar
        # Enter "/home /etc", without the quotes, for DIRS
        # Press enter for everything else

And you're done. This initialized the default strategy under /etc/vbackup/rc.d
and added 3 config files:

    * One to ensure that /mnt/backup is present
    * One to backup MBR and LVM data
    * One to backup /home and /etc using tar

You can verify that all is good by running::

    # vbackup --check

You can perform backups using::

    # vbackup 0
    - or, for less verbose output -
    # vbackup -d 4 0

You can perform higher level (incremental ) backups by passing a different
parameter to vbackup::

    # vbackup 5

this will base the backup on a previous level. Since the only lower level
backup is 0, it will be based on that. All methods that support incremental
backups will honor this. In this case this is tar. The mbr method will
still perform full backups, regardless of the level, as it doesn't support
incremental backups.

A more complex setup
^^^^^^^^^^^^^^^^^^^^

Let's assume you want to

    * Backup to an NFS mounted space that will be mounted on demand
      under /mnt/nfsbackup
    * Perform backup of /home using xfsdump
    * Perform backup of /boot and /etc using tar
    * Perform mysql and postgresql backup
    * Name this backup strategy "big"

Run the following::

    # vbackup --rc --init big
        # Enter "/mnt/nfsbackup/%D1%-%L%", without the quotes, for DESTDIR0
    # vbackup --rc --add big 00-remote.nfsmount
        # Enter the NFS URI to mount (e.g. mynfs.local:/mnt/backup) in NFSDIR
        # Enter the mount point (/mnt/nfsbackup) in MOUNTPOINT
    # vbackup --rc --add big 10-full.mysql
        # Answer as needed. For Debian systems you can just press enter
        # on all options
    # vbackup --rc --add big 10-full.pgsql
        # Same as above
    # vbackup --rc --add big 20-home.xfsdump
        # Enter /home for PARTITIONS
    # vbackup --rc --add big 30-system.tar
        # Enter "/etc /boot" for DIRS
    # vbackup --rc --add 99-remote.umount
        # Enter /mnt/nfsbackup for MOUNTPOINT

Now, see what you have created and check the configuration::

    # vbackup --rc --list big
    # vbackup --check big

Level 0 vackups are performed with::

    # vbackup big 0

Level 5 backups are performed with::

    # vbackup big 5

Setup - by hand
---------------


Let's assume the complex scenario above

1.  Go to /etc/vbackup and create a folder named rc.big.d. This will hold all
    the configuration scripts.

2.  Copy from the samples directory ($prefix/share/vbackup/samples) the
    following scripts to /etc/vbackup/rc.big.d:

    * sample.nfsmount
    * sample.umount
    * sample.xfsdump
    * sample.mysql
    * sample.pgsql
    * sample.umount
    * vbackup.conf.sample

3.  Rename sample.nfsmount to 00-remote.nfsmount (any name with the extension
    .nfsmount will do) and edit it. Change the values of the variables to fit
    your needs.

4.  Rename sample.umount to 99-remote.umount and edit it. Just set
    the mountpoint to umount.

5.  Rename sample.mysql to 10-full.mysql and edit it. Read the note at
    the top of the script and set variables as needed.

6.  Rename sample.pgsql to 10-full.pgsql and edit it.

7.  Rename sample.xfsdump to 20-home.xfsdump and edit it.

8.  Rename sample.tar to 30-system.tar an edit it.

9.  Rename vbackup.conf.sample to vbackup.conf and edit it

10. Check the configuration using::

    # vbackup --check big 0
    # vbackup --check big 5

To perform level 0 backup run::

    # vbackup big 0

To perform level 5 backup run::

    # vbackup big 5

