//help  plot2d 
//clf();
//x=[0:0.1:2*%pi]';
//plot2d(x,sin(x));
//multiple plot
//6.1 version
//xbasc() //p63 deplrecated -> clf (dep xclear)




//p72
R=[1:256]/256;RGB=[R' R' R'];
xset('colormap',RGB);
deff('[z]=surf(x,y)','z=-((abs(x)-1)**2+(abs(y)-1)**2)')
fgrayplot(-1.8:.02:1.8,-1.8:.02:1.8,surf,"111",[-2,-2,2,2])
xset

//p82


//p84



//xs2png(0,'scilab-colors-moueza.png')

