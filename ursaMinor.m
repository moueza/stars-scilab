#{

To import a CSV file containing strings into Octave software, you can use the csvread() function, which can handle both numeric and string data. However, the csvread() function will treat strings as NaN (Not a Number) values.

To import a CSV file containing strings while preserving the string values, you can use the csv2cell() function from the "io" package in Octave. Follow these steps:

Install the "io" package if you haven't already. Run the following command in the Octave command window:

lua
Copy code
pkg install -forge io
Load the "io" package using the pkg load command:

lua
Copy code
pkg load io
Use the csv2cell() function to import the CSV file. The function returns a cell array where each element represents a cell from the CSV file. Each row of the CSV file becomes a row in the cell array. Here's an example:

octave
Copy code
data = csv2cell('your_file.csv');
Replace 'your_file.csv' with the path to your actual CSV file. Make sure the CSV file is in the Octave's current working directory or provide the full file path if it's located elsewhere.

The data variable will contain the imported CSV data as a cell array, with string values preserved.

Note: If you have Octave 6.4 or later, you can use the built-in readtable() function to import CSV files, including string values. However, if you're using an older version of Octave, the csv2cell() method described above is a viable alternative.
#}

#{pkg install -forge io
pkg load io#}
data = csv2cell('ursaMinor.csv');
dataShrunkordered=data(1:12,:);
#data(1:3,[1,2])
dataShrunkorderedUnlabeled=dataShrunkordered;
dataShrunkorderedUnlabeled(1,:)=[] #4-17
siz=size(dataShrunkorderedUnlabeled)
nbLines=siz(1)
#cpt

ex=[15];
typeEx=typeinfo(ex(1));

dataShrunkordered=data(1:12,:);
exSample=dataShrunkordered(1:1,1:1)
typeSample=typeinfo(exSample(1))
disp("class of exSample(1):");class(exSample(1))

failingObj=dataShrunkorderedUnlabeled(7,15)
disp("class of failingObj:");class(failingObj)

goodObj=dataShrunkorderedUnlabeled(1,15)
disp("class of goodObj:");class(goodObj)





valued=dataShrunkorderedUnlabeled
for i = 1:nbLines
   disp(i);
  #if (typeinfo(dataShrunkorderedUnlabeled(i,15))==typeEx)
  dataShrunkorderedUnlabeled(i,15)
  #if (( dataShrunkorderedUnlabeled(i,15))==failingObj)
  if ( isequal(dataShrunkorderedUnlabeled(i,15),failingObj))
    #typeinfo(dataShrunkorderedUnlabeled(i,15))
    disp("OK");
    #printf ("OK");
    dataShrunkorderedUnlabeled(i,15)=999;
  else
    disp("KO");
  endif
endfor

dataShrunkorderedUnlabeled2=dataShrunkorderedUnlabeled;
valued=dataShrunkorderedUnlabeled2;

