OUTER = 100;
BULB = 41;
THICKNESS = 6;

module spindle(rot=0) {
    rotate([0,0,rot]) {
        translate([BULB, 0, 0]) 
        rotate([0,90,0]) 
        cylinder(r=1.51, h=OUTER-BULB);
    }
};

// create the spindles
for (n=[-3:3]) {
    translate([60,10*n,0]) {
        translate([OUTER,0,0])
        sphere(r=2.5, $fn=100);
        spindle();
    }
}

for(a=[0:60:360]) echo(a);

// the main rings
difference() {
    union() {
        translate([0,0,-THICKNESS/2]) {
            // inner annulus (bulb bracket)
            rotate_extrude(convexity=10)
            translate([BULB,0,0]) 
            square([10,THICKNESS]);
            // outer annulus
            rotate_extrude(convexity=10)
            translate([OUTER - 20,0,0]) 
            square([10,THICKNESS]);
        }
    }

    // the spindles
    group() {
        for(a=[0:60:360]) {
            spindle(rot=a);
        }
    }
}