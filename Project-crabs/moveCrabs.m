function [xCrab,yCrab,thetaCrab] = moveCrab(cmd,x,y,theta,height,width,size)
dTheta = pi/6;
dStep = 40;

if( cmd == "i" )
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;

elseif ( cmd == "j" )
xCapt = x+cos(theta);
yCapt = y-sin(theta);
thetaCapt = theta;

elseif ( cmd == "l" )
xCapt = x-cos(theta);
yCapt = y+sin(theta);
thetaCapt = theta;

elseif (cmd == "k")
xCapt = x-cos(theta);
yCapt = y-sin(theta);
thetaCapt = theta;

elseif (cmd == ",")
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;
else
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction
