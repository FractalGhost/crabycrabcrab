%Commitment

function crabs (level)
  numCrabs = level;
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
  % Draw the game map and initialize map dimensions.
  [mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 200;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 3;
crabsSlane = 0;
%initialize crab location, heading and size
xCrab = rand(1,numCrabs)*mapWidth;
yCrab = 3*mapHeight/4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
crabsCaught = zeros(1,numCrabs);
sizeCrab = 50;

xSpear = 1000;
ySpear = 200;
thetaSpear = -pi/2;
sizeSpear = 50;

%initialize jellyfish
xJelly = rand*mapWidth;
yJelly = 0;
thetaJelly = -pi/2;
sizeJelly = 25;
jellySting = 1;

% Draw the captain and initialize graphics handles
%*********************************************************
captainGraphics = drawCapt(xCapt , yCapt, thetaCapt, sizeCapt);
for k=1:numCrabs
crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
endfor
spearGraphics = drawSpear (xSpear, ySpear, thetaSpear, sizeSpear);
jellyHandle = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
%*******************************************************
%inyial command
  cmd = "null"; % initial command
while(1)

cmd = kbhit(1); % Read the keyboard.

if( cmd == "Q")
break
endif

for i=1:length(jellyHandle)
set(jellyHandle(i),'visible', 'off');
endfor
% move jellyfish
[xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly,
mapHeight,mapWidth);
% draw jellyfish
jellyHandle = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);


if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s") %Captain has moved. Respond.

% erase old captain
for i=1:length( captainGraphics )

set( captainGraphics(i), 'Visible', 'off' );

endfor
% move capt
 [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);
% draw new capt
 captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

endif


%removes crab
%or k=1:numCrabs
%if( !isCrabCaught(k) && getDist(xSpeartip,ySpeartip,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught

%crabsCaught = crabsCaught + 1;

%isCrabCaught(k) = 1;

%erase old crab
%for i=1:length(crabGraphics(:,k))
%delete(crabGraphics(i,k));
%endfor

%endif
% Repeat this process for the jellyfish but let them initialize anywhere in the ocean, not just on the
%sand.
%Turn in your crabs code and some screen shots of your game


fflush(stdout);
pause(.05);
endwhile

quit
clear all
endfunction


