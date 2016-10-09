OUTER = 100;
BULB = 41;

// inner annulus
rotate_extrude(convexity=10)
translate([BULB,0,0]) 
square([10,4]);



// outer annulus
rotate_extrude(convexity=10)
translate([OUTER - 20,0,0]) 
square([10,4]);


translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
    
rotate([0,0,60]) {
    translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
    translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
}
rotate([0,0,120]) {
    translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
    translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
}
rotate([0,0,180]) {
    translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
    translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
}
rotate([0,0,240]) {
    translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
    translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
}
rotate([0,0,300]) {
    translate([OUTER,0,2]) 
    sphere(r=2.5, $fn=100);
    translate([BULB, 0, 2]) 
    rotate([0,90,0]) 
    cylinder(r=1.5, h=OUTER-BULB);
}

