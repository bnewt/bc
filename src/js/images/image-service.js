var m = require('mithril'),
    imageTypes = [];

var images = require('./images.json');

    for(var type in images){
      if(images.hasOwnProperty(type)){
        imageTypes.push(type);
      }
    }

function getImageTypes(){
  return imageTypes;
}

function getImagesOfType(type){
  return images[type];
}

module.exports = {
    getImageTypes: getImageTypes,
    getImagesOfType: getImagesOfType
};
