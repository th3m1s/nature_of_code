int rgb=255;

colorMode(HSB,1);
color RGB = color(0.3, 1.0, 1.0);

float R,G,B,H,S,Br;
R=red(RGB);
G=green(RGB);
B=blue(RGB);
H=hue(RGB);
S=saturation(RGB);
Br=brightness(RGB);

println("R: "+R*rgb);
println("G: "+G*rgb);
println("B: "+B*rgb);
println("");
println("H: "+H);
println("S: "+S);
println("Br: "+Br);
