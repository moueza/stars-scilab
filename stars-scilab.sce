 //exec('/home/peter/POUB/stars-scilab/stars-scilab.sce', 1)
 //                                                      +++
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

// t matrix
function xyz=terreMAT(T)
      // xyz=[0 0 0]
     xyz(1,:)=cos(2*%pi*T); //!! que car 1 fois op speciale 
          xyz(2,:)=sin(2*%pi*T) ;
               xyz(3,:)=0*T ; 
endfunction
terreMAT([1 10 100 1000])

x= [1 10 100];
y= [1 10 100];
z= [1 10 100];
param3d(x, y, z)
