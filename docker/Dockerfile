# Boot My App Docker image.
#
# VERSION 0.0.1
#
# VOLUME: docker run -v ~/src/slides-boot-my-app:/opt/boot-my-app --name BOOT_MY_APP_VOLUMES busybox true
# BUILD:  docker build --rm -t nunux/boot-my-app .
# RUN:    docker run --rm -volumes-from BOOT_MY_APP_VOLUMES -i -t nunux/boot-my-app start

FROM nunux/nodejs

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install Yo
RUN npm install -g yo generator-reveal

EXPOSE 9000

USER node

ENV HOME /home/node

WORKDIR /opt/boot-my-app

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
