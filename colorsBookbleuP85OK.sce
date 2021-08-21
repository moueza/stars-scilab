//help  plot2d 
//clf();
//x=[0:0.1:2*%pi]';
//plot2d(x,sin(x));
//multiple plot
//6.1 version
//xbasc() //p63 deplrecated -> clf (dep xclear)
//getcolor()

 x=linspace(0,2*%pi,100);
plot2d(x,sin(x),style=5)

plot2d(x,cos(x),style=6)


//xs2png(0,'scilab-colors-moueza.png')

