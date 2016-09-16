

function setup() {
  createCanvas(640, 640, WEBGL);
}

function draw() {
  background(200);
 	// ambientLight(122,255,122)
 	rotateX(mouseX * 0.005);
 	rotateY(mouseY * 0.005);
 	rotateZ( ( mouseX + mouseY) * 0.005);
 	// ambientMaterial(0, 204, 122);
 	// normalMaterial();
  	box(200, 200, 200);
  
  
}


