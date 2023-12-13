%Commitment

function crabs

  playGame = 1;
while(playGame)
%draw start screen
level = drawStartScreen("crabstart.png");
   while(1)
  numCrabs = level;

  [mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 200;
thetaCapt = -pi/2;
sizeCapt = 50;
crabsSlain = 0;
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
spearGraphics = drawSpear(xSpear,ySpear, thetaSpear, sizeSpear);
captainGraphics = drawCapt(xCapt , yCapt, thetaCapt, sizeCapt);
for k=1:numCrabs
crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
endfor
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

if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s" || cmd == "m" ) %Captain has moved. Respond.

% erase old captain
for i=1:length( captainGraphics )

set( captainGraphics(i), 'Visible', 'off' );

endfor
% move capt
 [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);
% draw new capt
 captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

endif

% all crabs here ====+====
for k=1:numCrabs
if( !isCrabCaught(k) && getDist(xSpear,ySpear,xCrab(k),yCrab(k)))
% erase the old crab as already done in crabs
for i=1:length(crabGraphics(:,k))
delete(crabGraphics(i,k));
endfor
endif
endfor
% Repeat this process for the jellyfish but let them initialize anywhere in the ocean, not just on the
%sand.
%Turn in your crabs code and some screen shots of your game


fflush(stdout);
pause(.05);

endwhile
%draw end screen

playGame = drawEndScreen("crabend.png",crabsSlain,numCrabs);

endwhile

close all

clear

endwhile

%Turn in you crabs code and screen shots of your start and end screens.
endfunction


