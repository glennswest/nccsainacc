

module body()
{
    translate([35,0,0]) cube([10,45,20]);
    translate([0,-10,-10]) cube([45,10,30]);
    cube([45,10,20]);
}

module rcorner()
{
    difference(){
        body();
       translate([40,25,-11]) cylinder(r=2.65,h=32);
       translate([10,5,-5]) rotate([90,0,0]) cylinder(r=2.65,h=20);
       translate([35,5,-5]) rotate([90,0,0]) cylinder(r=2.65,h=20); 
    }   
}

rotate([180,0,0]) translate([0,0,-20]) rcorner();
