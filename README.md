docker-apt-cacher-ng
====================

Docker build for a basic apt-cacher-ng server including the cron
maintenance tasks.  The directories of interest are:
* /var/cache/apt-cacher-ng - Cache directory

This build uses supervisord to run both the apt-cacher-ng server and
cron so that periodic maintenance (cache cleanup) occurs.
