FROM node:alpine

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

ADD . /home/demo/dv/

RUN cd /home/demo/dv && npm install

ENTRYPOINT ["/home/demo/dv/boot.sh"]
