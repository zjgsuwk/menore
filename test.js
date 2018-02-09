var casper = require('casper').create();
casper.start('http://zipteria.com/6DZZ', function() {
   this.echo(this.getTitle());
});
casper.then(function() {
  this.capture('coinhive-homepage-before.png');
  // this.wait(3000);
  this.echo("miner done!")
  this.capture('coinhive-homepage-after.png');
});
casper.run();
