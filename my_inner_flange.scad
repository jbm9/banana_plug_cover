

inch = 25.4; // conversion factor

$fn=16;

threadwidth = 0.4;
tgap = 2*threadwidth;

core_h = 9.5;
flange_h = 4;

use <my_core.scad>;


module my_inner_flange() {
difference() {
  cylinder(h=6, r=6.5);
  translate([0,0,2])  core_footprint(0.75);
  translate([0,0,-1]) cylinder(r=9/64*inch/2+1, h=core_h+2);
}
}

my_inner_flange();
