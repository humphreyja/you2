/* jshint node:true */
var ES6Modules = require('broccoli-es6modules');
var mergeTrees = require('broccoli-merge-trees');

module.exports = function(jsFileBasenames) {
  var jsDir = 'web/static/js';
  var vendorDir = 'web/static/vendor/js';

  var sourceTree = [];

  // Add vendor directory
  sourceTree.push(vendorDir);

  // Use broccoli-es6modules to compile each JS file
  var scripts = [];
  jsFileBasenames.forEach(function(file) {
    var sourceFile = file + '.js';
    var destinationFile = 'js/' + file + '.js';
    scripts.push();
  });

  return mergeTrees(scripts);
};
