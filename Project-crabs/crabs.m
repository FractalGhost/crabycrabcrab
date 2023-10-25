%Commitment

function crabs (level)
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
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 50;

%initialize jellyfish
xJelly = rand*mapWidth;
yJelly = 0;
thetaJelly = -pi/2;
sizeJelly = 25;
jellySting = 1;

% Draw the captain and initialize graphics handles
%*********************************************************
captainGraphics = drawCapt(xCapt , yCapt, thetaCapt, sizeCapt);
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
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
fflush(stdout);
pause(.01)

for i=1:length(jellyHandle)
delete(jellyHandle(i));
endfor
% move jellyfish
[xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly,
mapHeight,mapWidth);
% draw jellyfish
jellyHandle = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);

endwhile

if( cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.

% erase old captain
for i=1:length( captainGraphics )

set( captainGraphics(i), 'Visible', 'off' );

endfor
% move capt
 [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt);
% draw new capt
 captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

 elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") % respond crab
%moved
%erase old crab
for i=1:length(crabGraphics)

set(crabGraphics(i),'Visible','off');

endfor
%move crab

[xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab, mapHeight,
mapWidth);
%draw new captain and crab

crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab)

endif





endfunction


