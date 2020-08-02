


inch = 25.4;

csize = inch * 4;
$fn=128;

module stcoaster(){
    cylinder(r=csize/2,h=1);
    content = "NCC";
    font = "Liberation Sans";

    translate ([-15,-5,0]) {
      linear_extrude(height = 1.75) {
        text(content, font = font, size = 10);
        }
       }
   
    for ( i = [20 : 5 : 45] ){    
       translate([0,0,.8]) rotate_extrude(convexity = 50) translate([(i) , 0, 0]) circle(r = .5, $fn = 100);     
      }
  
    for ( i = [0 : 10 : 350] ){    
     rotate([0,0,i]) translate([0,20,0]) cube([1,30,1.5]);
    }
  }
  
  stcoaster();