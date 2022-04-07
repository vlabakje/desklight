$fn = 360;

// half pipe
difference(){
    difference(){
        cylinder(50, r=17.5);
        translate([0, 0, -1]) cylinder(52, r=12.5);
    }
    translate([-25, -50, -1]) cube([50, 50, 52]);
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