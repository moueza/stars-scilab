//help  plot2d 
//clf();
//x=[0:0.1:2*%pi]';
//plot2d(x,sin(x));
//multiple plot
//6.1 version

//p66 d vs d1
t=(1:0.1:8)';xset("font",2,3)
xsetech([0,0,.5,.5],[-1,1,-1,1])
plot2d([t t],[1.5+.2*sin(t) 2+cos(t)])
xtitle('Plot2d')
titlepage('Piecewise linear')

//vs
t=(1:0.1:8)';xset("font",2,3)
xsetech([0.5,0,.5,.5],[-1,1,-1,1])
plot2d1('oll',t,[1.5+.2*sin(t) 2+cos(t)]) //Undefined variable: plot2d1
xtitle('Plot2d1')
titlepage('Logarithmic scale')


//from gree book p67
//plot2d1 deprecated ?
//feature request : click a window -> all Scilab windows come foreground
x=0:.1:2*%pi;
u=[-0.8+sin(x);-0.6+sin(x);-0.4+sin(x);-0.2+sin(x);sin(x)];
u=[u;0.2+sin(x);0.4+sin(x);0.6+sin(x);0.8+sin(x)]';//self u
//nothing printed plot2d('omn',x',u,[9,8,7,6,5,4,3,2,1,0],"011"," ",[0,-2,2*%pi,3],[2,10,2,10])
//KO plot2d('omn',x',u)
//9 lines
//plot2d(x',u);//OK
//plot2d1(x',u);//nothing





//p82


//p84



xs2png(0,'scilab-colors-moueza.png')

