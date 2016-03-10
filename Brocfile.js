/* jshint node:true */
var Funnel = require('broccoli-funnel');
var mergeTrees = require('broccoli-merge-trees');
var scriptCompiler = require('./broccoli/script-compiler');
var scssGlobber = require('./broccoli/scss-globber');

// Copy Static Assets
var staticAssets = new Funnel('web/static/assets');

// Compile Scripts
var jsFiles = ['admin', 'app'];
var scripts = scriptCompiler(jsFiles);

// Compile Styles
var cssFiles = ['admin', 'app'];
var styles = scssGlobber(cssFiles);

module.exports = mergeTrees([staticAssets, styles]);
