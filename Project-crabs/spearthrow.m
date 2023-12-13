function [xSpear,ySpear,thetaSpear] = spearthrow (x,y,theta,width,hight)

xSpear = x+dStep*cos(theta);
ySpear = y+dStep*sin(theta);
thetaSpear = theta;

while(x>0 && x<width && y>0 && y<height)
xSpear = x+dStep*cos(theta);
ySpear = y+dStep*sin(theta);
thetaSphear=thetaspear
endwhile

endfunction
