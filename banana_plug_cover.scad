// As an American whose relatives work in construction, I've always
// been kind of a fan of the 12" imperial system.  It has some nice
// properties when you're building houses.
//
// That said, it's absolute crap for machining.  Please don't judge it
// too harshly here.  It's gotten a lot better with decimal work, but
// this part clearly predates that era... -jbm

inch = 25.4; // conversion factor

$fn = 36;

rotate([180,0,0,0])

difference() {
  union() {
    cylinder(h=0.6*inch-5/64*inch, r2=3/8*inch/2, r1=1/2*inch/2);
    cylinder(h=0.6*inch, r=3/8*inch/2);
  }		     
  cylinder(h=0.6*inch, r1=5/16*inch/2, r2=1/4*inch/2, $fn=36);
  cylinder(h=8, r=8.8/2, $fn=16);
#  cylinder(h=0.75, r=1/2*inch/2-1);


  //  cube([100,100,100]);

  /*
  for (i = [ 0:10:350 ]) {

#	       rotate([0,0,i])

    rotate([0,-atan( (1/2-3/8)/2/(0.6-5/64) ),0]) // zomg
      translate([3/8*inch/2+0.03*inch+1, 0, 3/64*inch])
      union() {
      translate([0,0,0]) cylinder(h=29/64*inch, r=0.030*inch/2, $fn=10);
      sphere(r=0.030*inch/2, $fn=10);
    }
  }
  */
}
