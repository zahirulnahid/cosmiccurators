<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script src="https://aframe.io/releases/1.3.0/aframe.min.js"></script>
    <script src="https://cdn.rawgit.com/jeromeetienne/AR.js/1.6.0/aframe/build/aframe-ar.js"></script>
  </head>
  <body>
    <a-scene camera="active: true">
    <a-assets>
        <img id="boxTexture" src="https://api.amartable.com/ar/astro.png">
    </a-assets>    
    <a-image src="#boxTexture" position="0 0 -3"
    width="1"
    height="1"
    ></a-image>
    <a-text value="Hello, Sun!" color="red" position="1 1.5 -3"
    width="5"
    height="5"></a-text>
     <a-camera position="0 0 0"></a-camera>
    </a-scene>
  </body>
</html>
