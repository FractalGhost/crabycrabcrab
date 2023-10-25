function [xJelly yJelly, thetaJelly] = moveJelly (level, x, y, theta , size, height, width)
dstep=20+level;
yJelly = y + dstep;
xJelly = x;
thetaJelly = theta;
if(yJelly > height - 10*size)
yJelly = size;
xJelly = rand * width;
endif



endfunction
