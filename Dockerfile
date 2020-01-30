FROM duluca/minimal-node-web-server

ENV GAME oregon
WORKDIR /usr/src/app
COPY public public
USER 0
RUN chmod 777 /usr/src/app/public
USER node
ADD run.sh .

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "run.sh"]
