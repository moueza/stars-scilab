//exec('/home/peter/POUB/stars-scilab/normal.sce', 1)

//https://classroom.udacity.com/nanodegrees/nd065/parts/a5a4c41f-9cc7-48bd-9f00-582f35a7da53/modules/885b116b-2ca3-453a-8df1-4ea4b436b5da/lessons/b563d22e-85f0-48a7-b486-2b0ef7322092/concepts/12a781f3-22fd-4e7e-ad4e-acfec6014578
//exec('/home/peter/POUB/stars-scilab/stars-scilab.sce', 1)
//                                                      +++
// Compute p from x
x = -1;
Mean = 0;
Std = 1;
// P = 0.1586553, Q = 0.8413447
[P,Q]=cdfnor("PQ",120,180,34)
area120=P
[P,Q]=cdfnor("PQ",155,180,34)
area155=P
area155-area120
