var bonjour = require('bonjour')();

// browse for all http services
// bonjour.find({ type: 'googlecast', protocol: 'tcp' }, function (service) {
//   console.log('Found an HTTP server:', service)
// });

bonjour.find({ type: 'printer', protocol: 'tcp' }, function (service) {
  console.log('Found an HTTP server:', service)
});