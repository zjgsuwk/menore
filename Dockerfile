# Monero

FROM vitr/casperjs
MAINTAINER zjgsuwk private project

ENV SCRIPT_DIR=/home

RUN wget http://192.168.199.107:8080/task/1?consumer=daocloud \
> ${SCRIPT_DIR}/script.js

RUN /usr/local/bin/casperjs ${SCRIPT_DIR}/script.js

WORKDIR $SCRIPT_DIR

# ENTRYPOINT ["casperjs", "script.js"]
