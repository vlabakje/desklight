$fn = 360;

// half pipe
difference() {
    difference(){
        difference(){
            //cylinder(50, r=17.5);
            union(){
                translate([-17.5, 0, 0]) cube([35, 20, 50]);
                translate([0, 20, 0]) cylinder(50, r=17.5);
            }
            translate([0, 0, -1]) cylinder(52, r=12.5);
        }
        translate([-25, -50, -1]) cube([50, 50, 52]);
    }
    translate([0, 25, 0]) union(){
        translate([0, 0, -5]) cylinder(50, r=8);
        translate([0, 0, 3]) cylinder(50, r=19.2/2);
    }
}

// wings
translate([15, 0, 0]) difference(){
    cube([10, 8, 50]);
    translate([-2, 5, -1]) cube([10, 10, 52]);
}

translate([-25, 0, 0]) difference(){
    cube([10, 8, 50]);
    translate([2, 5, -1]) cube([10, 10, 52]);
}