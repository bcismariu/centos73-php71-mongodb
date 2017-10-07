FROM bcismariu/centos73-php71:latest
MAINTAINER Bogdan Cismariu <bogdan.cismariu@gmail.com>

# Copying helper files
ADD *.sh ./
RUN chmod +x *.sh

RUN ./install-mongo.sh

