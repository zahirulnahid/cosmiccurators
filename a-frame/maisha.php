<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://aframe.io/releases/1.3.0/aframe.min.js"></script>

</head>
<body>
    <a-scene>
        <a-assets>
            <img id="sun" src="https://i.ibb.co/0Bq8s2w/s3-removebg-preview.png" crossorigin="anonymous">
            <img id="psp" src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Parker_Solar_Probe_spacecraft_model.png/260px-Parker_Solar_Probe_spacecraft_model.png" crossorigin="anonymous">
            <img id="earth" src="https://scontent.fdac23-1.fna.fbcdn.net/v/t1.15752-9/300226562_657861052515817_4628580790467806564_n.png?_nc_cat=102&ccb=1-7&_nc_sid=aee45a&_nc_ohc=QJ04ONKZI-MAX9f3jpZ&_nc_ht=scontent.fdac23-1.fna&oh=03_AVI1Hs9aa7rYBLLojGMRefQyhion-GL2FEAP2Jclh5-zFg&oe=6359CAF2" crossorigin="anonymous">
            <img id="astro" src="https://i.ibb.co/cr39x3c/a1-removebg-preview.png" crossorigin="anonymous">            
        </a-assets>

        <!-- : if width taken 3 m, height = 3/(images’s width pixel) * (image’s height pixel) -->

        <a-image src="#sun" position="-10 0 -5"  width="3" height="3"  scale="2 2 2"></a-image>
        <a-image src="#psp" position="-5 0 -5"  width="0.5" height="0.348"  scale="4 4 4"></a-image>
        <a-image src="#earth" position="10 0 5"  width="2" height="1.373" transparent="true" scale="1 1 1"></a-image>
        <a-image src="#astro" position="7 0 5"  width="0.2" height="0.2"  scale="4 4 4"></a-image>

    </a-scene>
</body>
</html>