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
param3d(X, Y, Z)
