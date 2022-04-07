$fn=60;
length = 40;
outer_width = 19;
wire_hole_diameter=5;
top_radius = 8.64545;


difference(){
    union(){ // mushroom shaped tube
        difference(){ // U profile
            cube([outer_width, length, 9]);
            translate([2, 0, 1.5]) cube([15, length, 9]);
        }
        translate([0, 0, 9]) difference(){ // half tube top
            translate([8.4 + 1.1, 0, 6.6 - top_radius]) 
            rotate([270, 0, 0]){ // full tube
                difference(){
                    cylinder(h=length, r=top_radius+1);
                    cylinder(h=length, r=top_radius);
                }
            }
            // cut bottom part
            translate([-20, 0, -20]) cube([40, length, 20]);
            // cut top part
            translate([-20, 0, 3]) cube([40, length, 20]);
        }
    }
    // slated ends
    rotate([-30, 0, 0]) translate([0, -30, 0]) cube([outer_width, 30, 50]);
    translate([0, length, 0]) rotate([30, 0, 0]) cube([outer_width, 30, 50]);
    // wire hole in the center
    //translate([0, length/2, 5]) rotate([0, 90, 0]) cylinder(h=10, d=wire_hole_diameter);
}

difference(){
    translate([0, length/2, 19.2/2+2]) rotate([0, 270, 0]) difference(){
        cylinder(h=50, r=19.2/2+2);
        translate([0, 0, 2]) cylinder(h=50, r=19.2/2);
    }
    // slated end
    //rotate([-30, 0, 0]) translate([0, -30, 0]) 
    translate([0, 0, 9]) rotate([0, -30, 0]) cube([outer_width, 50, 50]);
}