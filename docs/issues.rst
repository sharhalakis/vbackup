Known issues
============

The xfsdump method cannot possibly support multi-level backups for multiple
strategies. This is because xfsdump stores the state under
/var/lib/xfsdump/inventory with no option to override this. This means that
multiple strategies wills hare the same state information, meaning that a level
5 backup of strategy A may end up depending on the level 0 backup of strategy
B.

I.e: Do not use xfsdump with multiple strategies and multiple levels or else
you *will* lose data. If you have a good idea on how to solve this, please send
a bug report.
