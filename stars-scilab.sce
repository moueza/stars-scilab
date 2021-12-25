//feature request refactor
//exec('/home/peter/POUB/stars-scilab/stars-scilab.sce', 1)
//                                                      +++
//courbe gauche = 3D curve
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
    xyz(3,:)=150000000*T ; 
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
    xyz(3,:)=150000000*T ; 
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

//param3d(X, Y, 3); KO
param3d(X, Y,Z, 3);//courbe gauche, left curve OK
//param3d(X, Y,Z, flag=[5,2,4]); //nul cf colorsPlot3dOK.sce

// simple plot using z=f(x,y)
//x=[0:0.3:2*%pi]';
//x=[0:0.3:149597887*2]';
x=linspace(0,149597887*2,10)';
y=linspace(0,149597887*2,10)';

//z=sin(x)*cos(x');++++++++++++++++++++++ matrix if vectors
//z=0;
z=ones(x*y')*x; // vector addition for ones ,vector so should fail because we want ~ square matrix
//z=ones(x*y')*x';
plot3d(x,y,z);//nappe mesh, cf colorsPlot3dOK.sce
xs2png(0,'terre.png')


//POO tlist list
  demiGdAxeMARS=227939200;
excentMARS=	0.0934;
periodMARS=  779.96    ;






//TODO constellation Cassiopee, gde Ourse, Pte Ourse
//https://fr.wikipedia.org/wiki/Cassiop%C3%A9e_(constellation)
 cassiopeiaOrder=list(["eps" "delta" "gamma" "alpha" "beta"])
 
 //h deg
 cassiopeiaOrder(2)=[[hms2h(01,  54,  23.68)  hms2h(+63, 40 ,12.5)  442]
  [  hms2h(01, 25, 48.60)   hms2h(+60,14, 07.5)	99]
 [hms2h(00, 56, 42.50)  hms2h(+60,43, 00.3)613   ]
 
 [  hms2h(00, 40, 30.39)      hms2h(56, 32, 14.7)	228]
 [  hms2h(00, 09, 10.09)     hms2h(59, 09,00.8) 54]
]


//cygnus
//https://fr.wikipedia.org/wiki/Liste_d%27%C3%A9toiles_du_Cygne
//α, γ, ε, δ beta
 cygnusOrder=list(["alpha"  "gamma" "eps" "delta"  "beta"])

txt=cygnusFile.txt


 function res=hms2h(h,m,s)
     res= h+m/60+s/3600
     endfunction

 function [h,m,s] = h2hms(hh)
     h= modulo(hh,1)//integer of
      m=modulo(((hh-h)*60),1)
     s=modulo((hh*3600),60)
     endfunction
[h,m,s] = h2hms(1.25)

 function res=h2hmsV2(hh)
     h= (hh,1)//integer of
     m=modulo(((hh-h)*60),1)
     s=modulo((hh*3600),60)
     res=list(h,m,s)
     endfunction

//blue book p33
function y = sq(x)
y=x*x
endfunction


//blue book p34
function [v,ind] = mafonc(vi,op)
v=3
ind=4
endfunction

[v,ind] = mafonc(1,2)
