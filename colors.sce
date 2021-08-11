//help  plot2d 
//clf();
//x=[0:0.1:2*%pi]';
//plot2d(x,sin(x));
//multiple plot


//plot2d1 deprecated ?
//feature request : click a window -> all Scilab windows come foreground
//from gree book p67
x=0:.1:2*%pi;
u=[-0.8+sin(x);-0.6+sin(x);-0.4+sin(x);-0.2+sin(x);sin(x)];
u=[u;0.2+sin(x);0.4+sin(x);0.6+sin(x);0.8+sin(x)]';//self u
//nothing printed plot2d('omn',x',u,[9,8,7,6,5,4,3,2,1,0],"011"," ",[0,-2,2*%pi,3],[2,10,2,10])
//KO plot2d('omn',x',u)
//9 lines
plot2d(x',u);//OK






//p82


//p84



xs2png(0,'scilab-colors-moueza.png')

