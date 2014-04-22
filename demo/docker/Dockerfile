# Techforum Docker demo image.
#
# VERSION 0.0.1
#
# BUILD:  docker build --rm -t nunux/boot-my-app-demo .
# RUN:    docker run --rm -i -t nunux/boot-my-app-demo start

FROM nunux/nodejs

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install Yo
RUN npm install -g yo generator-angular

RUN mkdir /opt/boot-my-app-demo
RUN chown node.node /opt/boot-my-app-demo

EXPOSE 9000

USER node

ENV HOME /home/node

WORKDIR /opt/boot-my-app-demo

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
