//feature request refactor
//exec('/home/peter/POUB/stars-scilab/stars-scilab.sce', 1)
//                                                      +++
demiGdAxeTERRE=	149597887.5;
excentTERRE =  0.01671022;
periodTERRE=     365.256363;
timesDAYS = linspace(0,periodTERRE,10);

function xyz=terre(t)
    // xyz=[0 0 0]
    xyz(1,:)=cos(2*%pi*t) ;  
    xyz(2,:)=cos(2*%pi*t) ;
    xyz(3,:)=0*t ; 
endfunction

//for j = 4:-1:1
//  j
//end
//exec -1 = https://help.scilab.org/doc/5.5.2/en_US/exec.html
terre(0)

//  matrix T ; test
function xyz=terreMATRIX(T)
    // xyz=[0 0 0]
    xyz(1,:)=cos(2*%pi*T); //!! que car 1 fois op speciale 
    xyz(2,:)=sin(2*%pi*T) ;
    xyz(3,:)=1*T ; 
endfunction


//isbn Atlas de l astronomie
function b=demiPetitAxe(demiGdAxe,exent)
    a2=demiGdAxe*demiGdAxe;
    exent2=exent*exent;
    b=sqrt(a2-exent2*a2);
endfunction

//  matrix T jrs, test pr z, periodd en jrs
function xyz=planetMATRIX(T,demiGdAxee,excentt,periodd)
    // xyz=[0 0 0]
    xyz(1,:)=demiGdAxee*cos(2*%pi*T/periodd); //!! que car 1 fois op speciale 
    xyz(2,:)=demiPetitAxe(demiGdAxee,excentt)*sin(2*%pi*T/periodd) ;
    xyz(3,:)=1*T ; 
endfunction

//TODO give just TERRE... POO
//T=0:.1:1;
//XYZ=terreMATRIX(0:.1:1)
XYZ=planetMATRIX(timesDAYS,demiGdAxeTERRE,excentTERRE,periodTERRE)



X= XYZ(1,:);
Y= XYZ(2,:);
Z= XYZ(3,:);
styless=ones(1,size(Z,"c"))
//param3d(X, Y, ZZ = list(Z, [color("orange")]));//courbe gauche, left curve
//param3d(X, Y,  list(Z, list(Z,styless)));//courbe gauche, left curve

//https://help.scilab.org/docs/6.0.0/en_US/param3d_properties.html
a=get("current_axes");//get the handle of the newly created axes


//param3d(X, Y, 3);//courbe gauche, left curve
 
t=[0:0.1:5*%pi]';
param3d1([sin(t),sin(2*t)],[cos(t),cos(2*t)],[t/10,sin(t)])


a.rotation_angles=[65,75];
a.data_bounds=[-1,-1,-1;1,1,2]; //boundaries given by data_bounds
a.thickness = 2;
h=a.children //get the handle of the param3d entity: an Compound composed of 2 curves
h.children(1).foreground = 5 // first curve
curve2 = h.children(2);
curve2.foreground = 6;
curve2.mark_style = 2;
