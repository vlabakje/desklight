$fn=60;
length = 20;
cap_depth = 2;
outer_width = 19;
wire_hole_diameter=5;
top_radius = 8.64545;


difference(){
    union(){ // mushroom shaped tube
        difference(){ // U profile
            cube([outer_width, length, 9]);
            translate([2, 0, 1.8]) cube([15, length-cap_depth, 9]);
        }
        translate([0, 0, 9]) difference(){ // half tube top
            translate([8.4 + 1.1, 0, 6.6 - top_radius + 0.2]) 
            rotate([270, 0, 0]){ // full tube
                difference(){
                    cylinder(h=length, r=top_radius+1);
                    cylinder(h=length-cap_depth, r=top_radius);
                }
            }
            // cut bottom part
            translate([-20, 0, -20]) cube([40, length, 20]);
        }
    }
    // slated end
    rotate([-30, 0, 0]) translate([0, -30, 0]) cube([outer_width, 30, 50]);
}
