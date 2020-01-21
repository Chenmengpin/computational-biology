% developing context specific VCH, E36 and VCH-E36 models

addpath('/data/dragon/mohameam/Package_MEM/')
addpath('/data/dragon/mohameam/Package_MEM/General_scripts/')
addpath('/data/dragon/mohameam/Package_MEM/Processing_of_inputs/')
addpath('/data/dragon/mohameam/transcript2flux-master/')  

% test model
model = vch_LB; 

% Maps the GPR rules of the model to a specified format that is used by
% the model extraction methods 
% Implementation taken from the COBRA Toolbox 
% (sub-function in "createTissueSpecificModel.m")
[parsedGPR,corrRxn] = extractGPRs(model)
