function spearGraphics = drawSpear (x, y, theta, size)

spear = getspear(size);

R = getRotation(theta);
spearRotated = R*spear;

T = getTranslation(x,y);
spear = T*spearRotated;

spt1=spear(:,1);
spt2=spear(:,2);
spt3=spear(:,3);

spearGraphics(1)=drawLine(spt1, spt2, "r");
spearGraphics(2)=drawLine(spt2, spt3, "k");
endfunction
