# Simple vibrating yawstring

var yawstring = func {

var airspeed = getprop("velocities/airspeed-kt");
var severity = -(airspeed / 30) + (airspeed / 30) * rand();
var noise = -5 + 5 * rand();
var position = getprop("orientation/side-slip-deg") + severity + noise;

setprop("instrumentation/yawstring", position);

settimer(yawstring,0);

}

# Start the yawstring ASAP
yawstring();
