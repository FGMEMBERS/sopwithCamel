###############################################################################
##
## Walk view configuration for Sopwith Camel for FlightGear
##
##  Copyright (C) 2010  Vivian Meazza
##  This file is licensed under the GPL license v2 or later.
##
#
################################################################################

# Constraints

var WOW = getprop("gear/gear/wow",1);
print("WOW!", WOW);

var groundCrew =
walkview.makeUnionConstraint(
        [
         # On Ground.
         walkview.ActionConstraint.new
             (walkview.CircularXYSurface.new([0, 0, -1.50], 20.0),
              func {
                  print("Seated!");
                  if(WOW){
                      print("WOW!");
                      walkview.active_walker().set_eye_height(0.82);
                  }
              },
              func(x, y) {
                  # Nothing.
              }),
         ]);

# Create the view managers.

var groundcrew_walker = walkview.Walker.new("Ground Crew View", groundCrew);


