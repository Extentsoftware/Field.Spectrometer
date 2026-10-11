/*
  A-1 HYD1 Leaf Transmission Clamp - Concept CAD R1
  Units: millimetres

  Provisional interfaces:
    MR8 lamp diameter:       25.4 mm
    Collection collimator:   12.7 mm
    Leaf optical aperture:   10.0 mm

  Export examples:
    openscad -D 'part="lower"' -o A1_lower_jaw.stl A1_leaf_clamp.scad
    openscad -D 'part="assembly"' -o A1_assembly.png A1_leaf_clamp.scad
*/

$fn = 72;

part = "assembly"; // [assembly,exploded,section,lower,upper,source,collector,pin,gasket]

// Main envelope
jaw_width = 70;
jaw_depth = 72;
corner_radius = 7;
plate_thickness = 10;
closed_leaf_gap = 0.8;
optical_y = -7;

// Optical path
aperture_diameter = 10;
gasket_outer_diameter = 22;
gasket_inner_diameter = 12;
gasket_thickness = 0.8;
diffuser_diameter = 18;
diffuser_thickness = 1.5;

// Source cartridge - provisional MR8 interface
lamp_diameter = 25.4;
lamp_clearance = 0.8;
source_outer_diameter = 36;
source_height = 36;
source_flange_diameter = 44;
source_flange_thickness = 4;

// Collector cartridge - provisional SMA905 collimator interface
collimator_diameter = 12.7;
collimator_clearance = 0.5;
collector_outer_diameter = 20;
collector_length = 34;
collector_flange_diameter = 30;
collector_flange_thickness = 4;

// Hinge and closure
hinge_y = jaw_depth/2 - 7;
hinge_pin_diameter = 3.2;
hinge_barrel_diameter = 9;
hinge_barrel_length = 16;
magnet_diameter = 6.2;
magnet_depth = 3.2;
magnet_y = -jaw_depth/2 + 10;

// Assembly pose
upper_angle = 0; // closed assembly

module rounded_box(size=[10,10,10], r=2, center=true) {
    hull() {
        for (x=[-size[0]/2+r, size[0]/2-r])
            for (y=[-size[1]/2+r, size[1]/2-r])
                translate([x,y,0]) cylinder(r=r, h=size[2], center=center);
    }
}

module jaw_blank() {
    rounded_box([jaw_width,jaw_depth,plate_thickness], corner_radius, true);
}

module leaf_gasket(col=[0.05,0.05,0.05,1]) {
    color(col)
    difference() {
        cylinder(d=gasket_outer_diameter, h=gasket_thickness, center=true);
        cylinder(d=gasket_inner_diameter, h=gasket_thickness+0.4, center=true);
    }
}

module lower_jaw() {
    difference() {
        union() {
            jaw_blank();

            // Lower hinge barrels, outside positions
            for (x=[-jaw_width/2+9, jaw_width/2-9])
                translate([x,hinge_y,plate_thickness/2])
                    rotate([0,90,0]) cylinder(d=hinge_barrel_diameter,h=hinge_barrel_length,center=true);

            // Four positive hard stops define the closed leaf gap
            for (x=[-24,24], y=[-24,13])
                translate([x,y,plate_thickness/2+closed_leaf_gap/2])
                    cylinder(d=5,h=closed_leaf_gap,center=true);

            // Collector boss under jaw
            translate([0,optical_y,-plate_thickness/2-2]) cylinder(d=collector_flange_diameter+4,h=4,center=true);
        }

        // Main transmission aperture
        translate([0,optical_y,0]) cylinder(d=aperture_diameter,h=plate_thickness+12,center=true);

        // Gasket pocket
        translate([0,optical_y,plate_thickness/2-0.45])
            difference() {
                cylinder(d=gasket_outer_diameter+0.4,h=1.0,center=true);
                cylinder(d=gasket_inner_diameter-0.4,h=1.4,center=true);
            }

        // Collector cartridge socket from underside
        translate([0,optical_y,-plate_thickness/2-1.6])
            cylinder(d=collector_outer_diameter+0.5,h=7,center=true);

        // Magnet pockets
        for (x=[-22,22])
            translate([x,magnet_y,plate_thickness/2-magnet_depth/2+0.05])
                cylinder(d=magnet_diameter,h=magnet_depth,center=true);

        // Hinge pin bores
        for (x=[-jaw_width/2+9, jaw_width/2-9])
            translate([x,hinge_y,plate_thickness/2])
                rotate([0,90,0]) cylinder(d=hinge_pin_diameter,h=hinge_barrel_length+2,center=true);
    }
}

module upper_jaw() {
    difference() {
        union() {
            jaw_blank();

            // Central upper hinge barrel fits between lower barrels
            translate([0,hinge_y,-plate_thickness/2])
                rotate([0,90,0]) cylinder(d=hinge_barrel_diameter,h=jaw_width-34,center=true);

            // Source-cartridge boss
            translate([0,optical_y,plate_thickness/2+2]) cylinder(d=source_flange_diameter+4,h=4,center=true);

            // Front thumb tab
            translate([0,-jaw_depth/2-5,0]) rounded_box([30,12,6],3,true);
        }

        // Optical aperture
        translate([0,optical_y,0]) cylinder(d=aperture_diameter,h=plate_thickness+12,center=true);

        // Diffuser pocket from upper face
        translate([0,optical_y,plate_thickness/2-diffuser_thickness/2+0.05])
            cylinder(d=diffuser_diameter+0.4,h=diffuser_thickness,center=true);

        // Gasket pocket from lower face
        translate([0,optical_y,-plate_thickness/2+0.45])
            difference() {
                cylinder(d=gasket_outer_diameter+0.4,h=1.0,center=true);
                cylinder(d=gasket_inner_diameter-0.4,h=1.4,center=true);
            }

        // Source cartridge socket from upper face
        translate([0,optical_y,plate_thickness/2+1.6])
            cylinder(d=source_outer_diameter+0.5,h=7,center=true);

        // Magnet pockets
        for (x=[-22,22])
            translate([x,magnet_y,-plate_thickness/2+magnet_depth/2-0.05])
                cylinder(d=magnet_diameter,h=magnet_depth,center=true);

        // Hinge pin bore
        translate([0,hinge_y,-plate_thickness/2])
            rotate([0,90,0]) cylinder(d=hinge_pin_diameter,h=jaw_width-30,center=true);

        // Two M3 source-retention holes
        for (x=[-20,20])
            translate([x,optical_y,plate_thickness/2+1]) cylinder(d=3.3,h=8,center=true);
    }
}

module source_cartridge() {
    difference() {
        union() {
            cylinder(d=source_outer_diameter,h=source_height,center=false);
            cylinder(d=source_flange_diameter,h=source_flange_thickness,center=false);
        }
        // Lamp cavity
        translate([0,0,5]) cylinder(d=lamp_diameter+lamp_clearance,h=source_height+2,center=false);
        // Output aperture
        translate([0,0,-1]) cylinder(d=diffuser_diameter,h=8,center=false);
        // Ventilation slots
        for (a=[0:60:300])
            rotate([0,0,a]) translate([source_outer_diameter/2-2,0,source_height-9])
                cube([5,4,12],center=true);
        // M3 flange holes
        for (x=[-20,20])
            translate([x,0,-1]) cylinder(d=3.3,h=source_flange_thickness+2,center=false);
    }
}

module collector_cartridge() {
    difference() {
        union() {
            cylinder(d=collector_outer_diameter,h=collector_length,center=false);
            cylinder(d=collector_flange_diameter,h=collector_flange_thickness,center=false);
        }
        // Adjustable collimator bore
        translate([0,0,-1]) cylinder(d=collimator_diameter+collimator_clearance,h=collector_length+2,center=false);
        // Split clamp slot
        translate([collector_outer_diameter/2-2,0,collector_length/2+4])
            cube([5,1.6,collector_length],center=true);
        // M3 flange holes
        for (x=[-11,11])
            translate([x,0,-1]) cylinder(d=3.3,h=collector_flange_thickness+2,center=false);
        // M3 radial clamp screw
        translate([0,-collector_outer_diameter/2,collector_length-8])
            rotate([90,0,0]) cylinder(d=3.3,h=collector_outer_diameter,center=true);
    }
}

module hinge_pin() {
    union() {
        rotate([0,90,0]) cylinder(d=3.0,h=jaw_width-9,center=true);
        translate([-(jaw_width-7)/2,0,0]) rotate([0,90,0]) cylinder(d=6,h=2,center=true);
    }
}

module leaf_sheet() {
    color([0.15,0.55,0.12,0.72])
    translate([0,-10,plate_thickness/2+closed_leaf_gap/2])
        scale([1.7,1,1]) cylinder(d=42,h=0.35,center=true,$fn=96);
}

module assembly(exploded=0, cutaway=false) {
    cut_span = cutaway ? jaw_width : 0;

    color([0.12,0.15,0.16])
    difference() {
        lower_jaw();
        if (cutaway) translate([jaw_width/4,0,0]) cube([jaw_width/2+2,140,100],center=true);
    }

    // Lower gasket
    translate([0,optical_y,plate_thickness/2+gasket_thickness/2+0.1]) leaf_gasket();
    leaf_sheet();

    upper_z = plate_thickness + closed_leaf_gap + exploded*18;
    color([0.16,0.19,0.20])
    translate([0,0,upper_z])
        difference() {
            upper_jaw();
            if (cutaway) translate([jaw_width/4,0,0]) cube([jaw_width/2+2,140,100],center=true);
        }

    translate([0,optical_y,upper_z-plate_thickness/2-gasket_thickness/2-0.1]) leaf_gasket();

    // Diffuser
    color([0.9,0.9,0.8,0.7])
    translate([0,optical_y,upper_z+plate_thickness/2-diffuser_thickness/2+0.05])
        cylinder(d=diffuser_diameter,h=diffuser_thickness,center=true);

    // Source cartridge
    color([0.18,0.22,0.23])
    translate([0,optical_y,upper_z+plate_thickness/2+4+exploded*16]) source_cartridge();

    // Collector cartridge, hanging down
    color([0.25,0.28,0.30])
    translate([0,optical_y,-plate_thickness/2-4-exploded*12])
        rotate([180,0,0]) collector_cartridge();

    // Hinge pin
    color("silver") translate([0,hinge_y,plate_thickness/2]) hinge_pin();

    // Optical path indication for assembly renders
    if (part=="section") {
        color([1,0.4,0,0.65]) translate([0,optical_y,upper_z+18]) cylinder(d1=8,d2=3,h=17,center=true);
        color([0.2,0.8,1,0.65]) translate([0,optical_y,0]) cylinder(d=3,h=35,center=true);
    }
}

if (part == "lower") lower_jaw();
else if (part == "upper") upper_jaw();
else if (part == "source") source_cartridge();
else if (part == "collector") collector_cartridge();
else if (part == "pin") hinge_pin();
else if (part == "gasket") leaf_gasket();
else if (part == "exploded") assembly(1,false);
else if (part == "section") assembly(0,true);
else assembly(0,false);

