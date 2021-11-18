// Customizable Wire Spools (with sturdier spool)
// Remixed by Matt Inglot from original by Gladius (source:  https://www.prusaprinters.org/prints/18981-customizeable-wire-spools)

// Tolerance in mm between the two cores. Use 0 to not add any spacing between the two cores. If that's too tight, try a small number like 0.2
tolerance=0.1;

// The thickness of each rim.
thicknessOfRim=2;

// The diameter of each rim.
diameterOfRim=80.0;

// The height of the spool's core.
heightOfSpool=40.0;

// The outer diameter of the core. 
diameterOfCore=25.0;

// The diameter of the hole to place in the core. Make sure this fits your intended mounting solution.
diameterOfHoleInRim=20.0;

// How thick the wall of each core is.
coreWallThickness=1.2;

outerCoreWall=(diameterOfCore-2*coreWallThickness);
wireHoles=true;
diameterOfWireHoles=3.0;
//Set facettes
$fn=100;

diameterOfInnerCore=outerCoreWall - tolerance;
innerCoreWall=(diameterOfCore-4*coreWallThickness);
translateRim=diameterOfRim+5;



//create Rim 1 and hole in Rim along with holes for wires
difference(){
    //Rim
    cylinder(thicknessOfRim,d=diameterOfRim);
    //Hole in Rim
    cylinder(thicknessOfRim+(thicknessOfRim-1),d=outerCoreWall);
    //Holes for wires
     if(wireHoles){for(i=[0:90:270]){
           rotate([0,0,i])translate([((diameterOfRim/2)-diameterOfWireHoles-1),0,0])cylinder(thicknessOfRim,d=diameterOfWireHoles); 
        }
    }
}
//create Rim 2 and hole in Rim 
difference(){
    
    //Rim
    translate([translateRim,0,0])    
        //Rim
    cylinder(thicknessOfRim,d=diameterOfRim);
    
    translate([translateRim,0,0])
    //Hole in Rim
    cylinder(thicknessOfRim+(thicknessOfRim-1),d=diameterOfHoleInRim);
    
    
    translate([translateRim,0,0])
    
    
    
    //Holes for wires
    if(wireHoles){for(i=[0:90:270]){
           rotate([0,0,i])translate([((diameterOfRim/2)-diameterOfWireHoles-1),0,0])cylinder(thicknessOfRim,d=diameterOfWireHoles); 
        }
    }
        

}
//create core and add hole to it
difference(){
    //Core
    translate([0,0,thicknessOfRim])cylinder(heightOfSpool,d=diameterOfCore);
    //Hole in Core
    translate([0,0,thicknessOfRim])cylinder(heightOfSpool,d=  outerCoreWall);
    
}


//create core 2 and add hole to it
difference(){
    //Core
    translate([translateRim,0,thicknessOfRim])
    cylinder(heightOfSpool+thicknessOfRim,d=diameterOfInnerCore);
    
    //Hole in Core
    translate([translateRim,0,thicknessOfRim])
    cylinder(heightOfSpool+thicknessOfRim,d=  innerCoreWall);            
}