var m = require('mithril'),
    //fs = require('fs'),
    indexOf = require('indexof'),
    images = {},// fs.readFileSyncasdf(__dirname + '/images.json', 'utf8'),
    types = ['kitchen', 'bathroom', 'lower-level', 'exterior', 'commercial'];

function getImageTypes(){
  return [];
}

function getImages(type){
  return images[type];
}

module.exports = {
    types: getImageTypes,
    get: getImages
};
