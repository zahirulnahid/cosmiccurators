<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script src="https://aframe.io/releases/1.3.0/aframe.min.js"></script>
    <script src="https://cdn.rawgit.com/jeromeetienne/AR.js/1.6.0/aframe/build/aframe-ar.js"></script>
  </head>
  <body>
    <a-scene camera="active: true">
           <a-text value="Speed : 1235455kms" color="red" width="5"  height="5" position="1 1 -3"></a-text>
<a-entity rotation="0 0 0" animation="property: rotation; to: 0 360 0; loop: true; dur: 10000">
        <a-sphere position="100 0 0" color="mediumseagreen" id='test'radius="5"></a-sphere>
         
</a-entity>
     <a-camera position="0 0 0"></a-camera>
    </a-scene>
    
    <script>
window.changeColor = (eleId, colorValue) => {
  const box = document.getElementById(eleId)
  box.setAttribute('color', colorValue)
}

changeColor('test', '#FFCCAA')
</script>
  </body>
</html>
