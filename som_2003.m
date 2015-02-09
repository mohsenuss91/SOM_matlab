%XLSREAD Get data and text from a spreadsheet in an Excel workbook.
data= xlsread('2003.xls');
 
%SOM_MAKE Create, initialize and train Self-Organizing Map.
sM=som_make(data,  'algorithm','batch',  'munits',100,  'mapsize','big', 'lattice','rect',  'shape','sheet',  'neigh','bubble',  'name','CHARGE ELECTRIQUE ALGERIENNE(2003)',  'tracking',1,  'training','short');
 
%SOM_UMAT Compute unified distance matrix of self-organizing map.
SOM_UMAT(sM)
 
%SOM_BMUS Find the best-matching units from the map for the given vectors.
transpose(som_bmus(sM, data))
 
% SOM_SHOW Basic SOM visualizations: component planes, u-matrix etc.
som_show(sM)
 
