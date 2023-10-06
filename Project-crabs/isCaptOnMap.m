function mapcheck = isCaptOnMap(x,y,width,hight)

  if (x>0 && x<width && y>0 && y<height)
    mapcheck=1;
  else
    mapcheck=0;
  endif

