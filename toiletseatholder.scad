$fn=50;

// Base plate
cylinder(r=25/2, h= 3.5);

// Inserted part
translate([0,0,-30])
union() {
    difference() {
        cylinder(r2=10.2, r1=10, h=30);
        
        cylinder(r=7.5,h=50);
        
        translate([-2,-50,-6])
        cube([4,100,30]);
    }
}

// Top part
translate([0,0,3.5])
union() {
    translate([-4,0,12.5])
    rotate([-90,0,0])
    union() {
        translate([0,0,-23/2])
        cylinder(r=6.6/2, h=23);
        
        translate([0,0,-5.3/2])
        cylinder(r=13/2, h=5.3);        
    }
    
    intersection() {
        rad = 20.5;
        
        translate([-rad+10,0,0])
        rotate([-90,0,0])
        translate([0,0,-5.3/2])
        cylinder(r=rad,h=5.3);
        
        translate([0,-5.3/2,0])
        cube([10, 5.3, 17]);
    }
}
