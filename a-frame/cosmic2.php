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
            <!-- <img id="astro" src="https://i.ibb.co/cr39x3c/a1-removebg-preview.png" crossorigin="anonymous">  -->
           
            <img id="space" src="https://wallpaperaccess.com/full/655045.jpg" crossorigin="anonymous">          
           <!-- scenes space-->
            <img id="planet1" src="https://i.ibb.co/tsSDvCX/download-removebg-preview.png" crossorigin="anonymous">            
            <img id="saturn" src="https://i.ibb.co/5vkRTMD/pl2-removebg-preview.png" crossorigin="anonymous">            
            <!--<img id="galaxy" src="https://i.ibb.co/sPYKgYZ/2672878-removebg-preview-1.png" crossorigin="anonymous">  -->          
            <img id="astro2" src="https://i.ibb.co/k5YFfFL/a4-removebg-preview.png" crossorigin="anonymous"> 

            <!-- <img id="exp1WInd" src="" crossorigin="anonymous"> CANCELL -->  
            <img id="exp2TIMED" src="https://i.ibb.co/RQnKpdC/exto2-removebg-preview-removebg-preview-1.png" crossorigin="anonymous">  
            <img id="exp2TIMED" src="https://i.ibb.co/RQnKpdC/exto2-removebg-preview-removebg-preview-1.png" crossorigin="anonymous">  
            <img id="exp2TT" src="https://i.ibb.co/HKkShW6/exto2-prev-ui.png" crossorigin="anonymous">  
            <img id="imp1Hermes" src="https://i.ibb.co/k65GZ81/imp1-HERMES.png" crossorigin="anonymous"> 
            <img id="frm1EUVST" src="https://i.ibb.co/xqXMZfX/sat-removebg-preview.png" crossorigin="anonymous">  
           

        </a-assets>

        <!-- : if width taken 3 m, height = 3/(images’s width pixel) * (image’s height pixel) -->
        <a-sky src="#space"> 
        </a-sky>
        <a-entity>

        <a-image src="#exp2TIMED" position="0 3 -4"  width="3" height="1.68"  scale="1 1 1" rotation="0 50 0"></a-image>
        <a-image src="#exp2TT" position="0 3 -7"  width="3" height="1.68"  scale="1 1 1" rotation="0 50 0"></a-image>


        <a-image src="#imp1Hermes" position="-10 -3 -3"  width="3" height="3"  scale="1 1 1" rotation="0 50 0"></a-image>
       


        <a-image src="#sun" position="-10 0 -5"  width="3" height="3"  scale="3 3 3" rotation="0 50 0"></a-image>
        <!--<a-image src="#galaxy" position="-20 0 -3"  width="1" height="0.75" rotation="0 100 0" scale="2 2 2"></a-image> -->
        <a-image src="#astro2" position="9 -1 -1"  width="1" height="1.776" rotation="0 100 0" scale="1 1 1"></a-image>

        <a-image src="#planet1" position="-15 3"  width="2" height="1.1637"  scale="1 1 1"></a-image>
        <a-image src="#saturn" position="16 -5 -18"  width="2" height="1.126"  scale="1 1 1"></a-image>
        <a-text value="Hello Space Surfer" color="#C0C0C0" scale="10 10 10" position="-5 0 -15"></a-text>
        <a-text value="Float around to see the space" color="#C0C0C0" scale="10 10 10" position="-5 -2 -15"></a-text>

        <a-image src="#psp" position="-5 0 -5"  width="0.5" height="0.348"  scale="4 4 4"></a-image>
        <a-image src="#earth" position="11 0 -5"  width="2" height="1.373"  scale="3 3 3" rotation="0 -50 0"></a-image>
       <!-- <a-image src="#field" position="11 0 5"  width="2" height="1.373"  scale="3 3 3" rotation="0 -50 0"></a-image> -->

        <a-image src="#frm1EUVST" position="8 2 -6"  width="1" height="0.75"  scale="1 1 1"></a-image>
        
      <!--  <a-image src="#astro" position="11 3 -3"  width="0.2" height="0.2" rotation="0 100 0" scale="4 4 4"></a-image> -->
        <a-entity>
    </a-scene>
</body>
</html>