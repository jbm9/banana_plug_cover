
inch = 25.4; // conversion factor

$fn=16;

threadwidth = 0.4;
tgap = 2*threadwidth;

core_h = 8;
flange_h = 4;

module core_footprint(tolerance=0.25) {
  difference() {
    union() {
      cylinder(r=3/8*inch/2+tolerance, h=core_h, $fn=20);
      translate([0,0,core_h-flange_h]) cylinder(h=flange_h, r1=3/8*inch/2+tolerance-0.5, r2=7/16*inch/2-0.5+tolerance, $fn=20);
    }

    translate([-1*inch,9/64*inch+0.25,-1]) cube([2*inch,2*inch,core_h+2]);
  }
}


module my_core() {

difference() {
  core_footprint(0);

  // hole
  translate([0,0,-1]) cylinder(r=9/64*inch/2+0.75, h=core_h+2);

  // central D
  translate([0,0,core_h-5/64*inch])
    difference() {
    cylinder(r=1/4*inch/2+0.5, h=5/64*inch + 1);
    translate([-1*inch, 3/32*inch+0.125, 0]) cube([2*inch, 2*inch, 3/64*inch]);
  }
}


}

my_core();
