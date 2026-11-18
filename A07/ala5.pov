#version 3.7;
global_settings { assumed_gamma 2.2 }

#include "colors.inc"
#include "ala.pov"

camera {
    location <0, 0, 30>
    right -x * image_width / image_height
    look_at <0, 0, 0>
    angle 45
}

light_source { <15, 20, 30> color White }
light_source { <-15, -10, 20> color Gray50 }
background { color White }

#declare Radius = 6.0;
#declare NumMolecules = 5;

#for (I, 0, NumMolecules - 1)
    #declare Angle = 90 + I * (360 / NumMolecules);
    object {
        ala
        translate mol_0_center
        translate <Radius * cos(radians(Angle)), Radius * sin(radians(Angle)), 0>
    }
#end