function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta );
dTheta = pi/6;
dStep = 40;

if( cmd == "w" )
xCapt = x+dStep*cos(theta);
yCapt = y+dStep*sin(theta);;
thetaCapt = theta;

elseif ( cmd == "d" )
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;

elseif ( cmd == "a" )
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

else
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction

