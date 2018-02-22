# Monero

FROM vitr/casperjs
MAINTAINER zjgsuwk private project

ENV SCRIPT_DIR=/home

RUN wget http://localhost:8080/task/TASK_TOKEN?daocloud=CONSUMER_NAME
> ${SCRIPT_DIR}/script.js

RUN /usr/local/bin/casperjs ${SCRIPT_DIR}/script.js

WORKDIR $SCRIPT_DIR

# ENTRYPOINT ["casperjs", "script.js"]
