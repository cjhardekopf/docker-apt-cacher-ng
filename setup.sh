# Shell setup
unalias -a
hash -r
set -o errexit

# Make sure debconf is noninteractive
export DEBIAN_FRONTEND=noninteractive

# Update packages
apt-get update -y

## Upgrade packages
#apt-get dist-upgrade -y

# Install apt-cacher-ng, cron, and supervisor
apt-get install -y apt-cacher-ng cron supervisor

# Turn off standard cron checks
echo 'CHECK_LOSTFOUND=no' >> /etc/default/cron

# Turn off apt periodic checks
echo 'APT::Periodic::Enable "0";' > /etc/apt/apt.conf.d/00periodic
