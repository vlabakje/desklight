$fn=360;

r = 19.2/2;
wall = 2;
angle = 87;
end_length = 50;


// tube 1
rotate([0, 0, -90+angle])
translate([0, r+10, 0])
rotate([90, 0, -90])
difference(){
    cylinder(h=end_length, r=r+wall);
    translate([0, 0, 0]) cylinder(h=end_length, r=r);
}

// bend
difference(){
    rotate_extrude(angle=angle)
    translate([r+10,0, 0]) circle(r+2);
    rotate_extrude(angle=angle)
    translate([r+10,0, 0]) circle(r);
}
// tube 2
translate([r+10, 0, 0])
rotate([90, 0, 0])
difference(){
    cylinder(h=end_length, r=r+2);
    translate([0, 0, 0]) cylinder(h=end_length, r=r);
}