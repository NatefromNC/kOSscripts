//This is a simple gravity turn program for RSS. While still usable in stock, 200 km is a bit high...
//Staging is not managed by this program, so you'll have to do that yourself.
declare tgtangle to 90.
declare th to 0.
declare tgtapoapsis to 200000.
lock throttle to 1.
lock steering to heading(0,90).
wait until airspeed>100.
until tgtangle < 20
{
 declare modapo to (apoapsis/1000).
 set tgtangle to (90-modapo).
 lock steering to heading(th,tgtangle).
}
lock steering to heading(th,20).
wait until apoapsis>tgtapoapsis.
set throttle to 0.
unlock throttle.
unlock steering.
set ship:control:pilotmainthrottle to 0.
