//help  plot2d 
//clf();
//x=[0:0.1:2*%pi]';
//plot2d(x,sin(x));
//multiple plot
//6.1 version
//xbasc() //p63 deplrecated -> clf (dep xclear)


//p66 d vs d1
t=(1:0.1:8)';xset("font",2,3)
xsetech([0,0,.5,.5],[-1,1,-1,1])
plot2d([t t],[1.5+.2*sin(t) 2+cos(t)])
xtitle('Plot2d')
titlepage('Piecewise linear')

//vs
t=(1:0.1:8)';xset("font",2,3)
xsetech([0.5,0,.5,.5],[-1,1,-1,1])
//plot2d1('oll',t,[1.5+.2*sin(t) 2+cos(t)]) //Undefined variable: plot2d1
xtitle('Plot2d1')
titlepage('Logarithmic scale')

