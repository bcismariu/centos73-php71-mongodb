FROM bcismariu/centos73-php71:latest
MAINTAINER Bogdan Cismariu <bogdan.cismariu@gmail.com>

# The yum package php71u-pecl-mongodb has some problems
# so we need to build from source

yum install -y \
    pear1u \
    php71u-devel \
    gcc \
    make \
    openssl-devel

pecl channel-update pecl.php.net
pecl install mongodb

# mongodb is already installed
# using the yum package to update the ini config files

yum install -y php71u-pecl-mongodb
