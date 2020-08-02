

module body()
{
translate([0,0,0]) cube([10,45,20]);
translate([0,-10,-10]) cube([45,10,30]);
cube([45,10,20]);
}

module lcorner()
{
    difference(){
        body();
       translate([5,10,-11]) cylinder(r=2.6,h=32);
       translate([10,5,-5]) rotate([90,0,0]) cylinder(r=2.6,h=20);
       translate([35,5,-5]) rotate([90,0,0]) cylinder(r=2.6,h=20); 
    }   
}

lcorner();