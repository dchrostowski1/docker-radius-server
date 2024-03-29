# -*- text -*-
##
## admin.sql -- MySQL commands for creating the RADIUS user.
##
##	WARNING: You should change '*' and 'radpass'
##		 to something else.  Also update raddb/sql.conf
##		 with the new RADIUS password.
##
##	$Id: 5c91384c0991ea9614b7c798a1ab4c89ca227115 $

#
#  Create default administrator for RADIUS
#
CREATE USER 'radius'@'*';
SET PASSWORD FOR 'radius'@'*' = PASSWORD('radpass');

# The server can read any table in SQL
GRANT ALL ON radius.* TO 'radius'@'*' identified by 'radpass';
GRANT ALL ON radius.* TO 'radius'@'radsrvr' identified by 'radpass';

# The server can write to the accounting and post-auth logging table.
#
#  i.e.
#GRANT ALL on radius.radacct TO 'radius'@'*' identified by 'radpass';
#GRANT ALL on radius.radacct TO 'radius'@'radsrvr' identified by 'radpass';
