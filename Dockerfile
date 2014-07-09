# Boot My App Docker image.
#
# VERSION 0.0.1
#
# BUILD:  docker build --rm -t ncarlier/slides-boot-my-app .

FROM ncarlier/nodejs

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install Yo
RUN npm install -g yo generator-reveal

# Port
EXPOSE 9000

# Add files
ADD . /opt/boot-my-app
WORKDIR /opt/boot-my-app
RUN chown node.node -R /opt/boot-my-app

# Def. user
USER node
ENV HOME /home/node

# Install App
RUN bower install
RUN npm install

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
