# Boot My App Docker image.
#
# VERSION 0.0.1

FROM ncarlier/nodejs

MAINTAINER Nicolas Carlier <https://github.com/ncarlier>

# Install Yo
RUN npm install -g yo generator-reveal generator-angular

# Port
EXPOSE 9000
EXPOSE 35729

# Add files
ADD . /opt/slides-boot-my-app
WORKDIR /opt/slides-boot-my-app
RUN chown node.node -R /opt/slides-boot-my-app

# Def. user
USER node
ENV HOME /home/node

# Install App
RUN bower install && npm install

ENTRYPOINT ["/usr/bin/npm"]

CMD ["start"]
