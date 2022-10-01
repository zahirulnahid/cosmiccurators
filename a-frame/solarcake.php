<html>

<style>
     .cropped {
    width: 256; /* width of container */
    height: 256; /* height of container */
    overflow: hidden;
   
}


* {
  box-sizing: border-box;
}

body {
  margin: 20%;
  font-family: Arial;
}



/* Create two equal columns that floats next to each other */
.column {
  float: left;
  
}

.column img {
  margin-top: 12px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

</style>
<body>

<!-- Header -->
<div class="header">
 <center> <h1>Solar Cake</h1></center>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">

  <div class="cropped"><img id="pie1" src="https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0193.jpg" style="margin: 0px -256px 0px 0px;border-radius: 250px 0px 0px 0px;"></div>
  <div class="cropped"><img id="pie2" src="https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0304.jpg" style="margin: -256px 0px 0px 0px;border-radius: 0px 0px 0px 250px;"></div>
  </div>
  
  <div class="column">
  <div class="cropped"><img id="pie3" src="https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0211.jpg" style="margin: 0px 0px 0px -256px;border-radius: 0px 250px 0px 0px;"></div>
  <div class="cropped"><img id="pie4" src="https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0131.jpg" style="margin: -256px 0px 0px -256px;border-radius: 0px 0px 250px 0px;"></div>

 
 
  </div>  
</div>

<script>
function getRandomArbitrary(min, max) {
  return Math.random() * (max - min) + min;
}
const pie = ["https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0193.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0304.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0171.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0211.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0131.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0335.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_0094.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_1600.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_1700.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/latest_512_211193171.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/f_304_211_171_512.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/f_094_335_193_512.jpg",
"https://sdo.gsfc.nasa.gov/assets/img/latest/f_HMImag_171_512.jpg",];

document.getElementById("pie1").src = pie[parseInt(getRandomArbitrary(0, 12))].toString();
document.getElementById("pie2").src = pie[parseInt(getRandomArbitrary(0, 12))].toString();
document.getElementById("pie3").src = pie[parseInt(getRandomArbitrary(0, 12))].toString();
document.getElementById("pie4").src = pie[parseInt(getRandomArbitrary(0, 12))].toString();

</script>
</body>
</html>
