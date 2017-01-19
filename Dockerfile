FROM node:0.10.44-slim

sudo pip install awscli

ADD . /home/demo/dv/

RUN cd /home/demo/dv && npm install

ENTRYPOINT ["/home/demo/dv/boot.sh"]
