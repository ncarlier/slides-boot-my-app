# Techforum Docker demo image.
#
# VERSION 0.0.1
#
# VOLUME: docker run -v ~/src/slides-boot-my-app/demo/workspace:/opt/boot-my-app-demo --name BOOT_MY_APP_DEMO_VOLUMES busybox true
# BUILD:  docker build --rm -t nunux/boot-my-app-demo .
# RUN:    docker run --rm -volumes-from BOOT_MY_APP_DEMO_VOLUMES -i -t nunux/boot-my-app-demo start

FROM nunux/nodejs

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install Yo
RUN npm install -g yo generator-angular

EXPOSE 9000

USER node

ENV HOME /home/node

WORKDIR /opt/boot-my-app-demo

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
