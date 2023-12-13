function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta );
dTheta = pi/6;
dStep = 40;
dLeap = 80;

if( cmd == "w" )
xCapt = x+dStep*cos(theta);
yCapt = y+dStep*sin(theta);
thetaCapt = theta;

elseif ( cmd == "d" )
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;

elseif ( cmd == "a" )
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

elseif ( cmd == "s")

xCapt = x+dLeap*cos(theta);
yCapt = y+dLeap*sin(theta);
thetaCapt = theta;

elseif (cmd == "m")


else
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif

endfunction

