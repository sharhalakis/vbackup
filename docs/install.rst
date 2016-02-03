Installation
=============

If you are not installing from packages then you most probably need to do
something like this::

 # ./configure --sysconfdir=/etc
 # make
 # make install

I.e. standard autoconf installation.

Requirements
------------

    * GNU find
    * GNU tar - for the tar method
    * xfsdump - for the xfsdump method
    * RPM - for the rpm method
    * dpkg - for the dpkg method
    * openldap - for the openldap method
    * openssl - for the x509 method
    * mdadm and lvm - for the mbr method

