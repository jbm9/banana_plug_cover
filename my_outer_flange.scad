

inch = 25.4; // conversion factor

$fn=16;

threadwidth = 0.4;
tgap = 2*threadwidth;

core_h = 8;
flange_h = 4;

use <my_core.scad>;

module my_outer_flange() {
difference() {
  cylinder(h=0.175*inch, r1=17/32*inch/2+1, r2=7/16*inch/2+1);
  translate([0,0,0.175*inch-core_h+0.02])
  core_footprint();
}
}



my_outer_flange();
