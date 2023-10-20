function [xjelly yjelly, thetajelly] = moveJelly (level, x, y, theta , size, height, width)
dstep=20*level/10;
yjelly = y + dstep;
xjely = x;
thetajelly = theta;
if(yjelly > height - 10*size)
yjelly = size;
xjely = rand * width
endif



endfunction
