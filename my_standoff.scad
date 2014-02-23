use <my_core.scad>;
use <my_outer_flange.scad>
use <my_inner_flange.scad>


my_core();

translate([20,0,0])
my_outer_flange();

translate([-20,0,0])
my_inner_flange();

