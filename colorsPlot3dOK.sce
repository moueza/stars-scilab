 

// simple plot using z=f(x,y)
//x=[0:0.3:2*%pi]';
//x=[0:0.3:149597887*2]';
x=linspace(0,149597887*2,10)';
y=linspace(0,149597887*2,10)';

//z=sin(x)*cos(x');++++++++++++++++++++++ matrix if vectors
//z=0;
//z=ones(x*y')*x; // vector addition for ones ,vector so should fail because we want ~ square matrix
//z=ones(x*y')*x';
z=ones(x*y')*1;
plot3d(x,y,z,flag=[5,2,4]);//nappe mesh, 5 = red
xs2png(0,'terre.png')


//POO tlist list
  demiGdAxeMARS=227939200;
excentMARS=	0.0934;
periodMARS=  	779.96    ;

//TODO constellation Cassiopee, gde Ourse, Pte Ourse
