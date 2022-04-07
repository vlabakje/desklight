$fn=60;
length = 80;
outer_width = 19;
wire_hole_diameter=5;
top_radius = 8.64545;


difference(){
    union(){ // mushroom shaped tube
        difference(){ // U profile
            cube([outer_width, length, 9]);
            translate([2, 0, 1.8]) cube([15, length, 9]);
        }
        translate([0, 0, 9]) difference(){ // half tube top
            translate([8.4 + 1.1, 0, 6.6 - top_radius + 0.2]) 
            rotate([270, 0, 0]){ // full tube
                difference(){
                    cylinder(h=length, r=top_radius+1);
                    cylinder(h=length, r=top_radius);
                }
            }
            // cut bottom part
            translate([-20, 0, -20]) cube([40, length, 20]);
        }
    }
    // slated ends
    rotate([-30, 0, 0]) translate([0, -30, 0]) cube([outer_width, 30, 50]);
    translate([0, length, 0]) rotate([30, 0, 0]) cube([outer_width, 30, 50]);
    // wire hole in the center
    translate([0, length/2, 6]) rotate([0, 90, 0]) cylinder(h=10, d=wire_hole_diameter);
}
// block for middle
translate([15, length/2-5, 0]) cube([3, 10, 11]);
