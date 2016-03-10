/* jshint node:true */
var bourbon = require('bourbon');
var compileSass = require('broccoli-sass');
var glob = require('glob-fs');
var mergeTrees = require('broccoli-merge-trees');
var path = require('path');
var replace = require('broccoli-replace');

module.exports = function(scssFileBasenames) {
  var sassDir = 'web/static/css';
  var vendorDir = 'web/static/vendor/css';

  // Replace glob imports with individual SCSS imports
  var sourceTree = [replace(sassDir, {
    files: ['**/*.scss'],
    patterns: [
      {
        match: /@import\s["']([^*;]*)(\*{1,2}\/?\*?)["'];/g,
        replacement: function(match, importDir, stars) {
          stars += '.scss';
          var globPath = path.join(sassDir, importDir, stars);
          var imports = glob().readdirSync(globPath).map(function(filePath) {
            var importFilePath = filePath.replace(sassDir + '/', '');
            var importName = path.basename(importFilePath).replace(/^_/, '').replace('.scss', '');
            var importDir = path.dirname(importFilePath);
            var importPath = path.join(importDir, importName);
            return '@import "' + importPath + '";';
          });
          return imports.join('\n');
        }
      }
    ]
  })];

  // Add vendor and bourbon directories
  sourceTree.push(vendorDir);
  sourceTree = sourceTree.concat(bourbon.includePaths);

  // Use broccoli-sass to compile the now valid SCSS files
  var styles = [];
  scssFileBasenames.forEach(function(file) {
    var sourceFile = file + '.scss';
    var destinationFile = 'css/' + file + '.css';
    styles.push(compileSass(sourceTree, sourceFile, destinationFile));
  });

  return mergeTrees(styles);
};
