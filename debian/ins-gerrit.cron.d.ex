#
# Regular cron jobs for the ins-gerrit package
#
0 4	* * *	root	[ -x /usr/bin/ins-gerrit_maintenance ] && /usr/bin/ins-gerrit_maintenance
