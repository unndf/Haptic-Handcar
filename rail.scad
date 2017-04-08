base_width = 127;
base_height = 25;

head_height = 75;
head_width  = 75;

rail_height = 75;
rail_width  = 15;

//rail base
rotate([90,0,90])
linear_extrude(height = 3000, center = true)
square([base_width,base_height])
;

//rail "rail"
rotate([90,0,90])
linear_extrude(height = 3000, center = true)
translate([base_width/2-rail_width/2,base_height,0])
square([rail_width, rail_height])
;

//rail head
rotate([90,0,90])
linear_extrude(height = 3000, center = true)
translate([base_width/2-head_width/2,base_height+rail_height,0])
square([head_width, head_height])
;