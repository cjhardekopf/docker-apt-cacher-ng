FROM ubuntu
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Upload the setup script
ADD setup.sh /tmp/setup.sh

# Run the setup script
RUN /bin/bash /tmp/setup.sh

# Add the supervisor configuration for apt-cacher-ng and cron
ADD apt-cacher-ng.conf /etc/supervisor/conf.d/
ADD cron.conf /etc/supervisor/conf.d/

# Expose the apt-cacher-ng port
EXPOSE 3142

# elasticsearch service in the foreground
CMD ["/usr/bin/supervisord","--nodaemon"]

