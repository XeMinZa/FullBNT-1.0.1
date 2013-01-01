global BNT_HOME
if (~exist ('BNT_HOME'))
    error ('Please define the global BNT_HOME before running add_BNT_to_path.');
end
%BNT_HOME = 'C:\kmurphy\matlab';
%BNT_HOME = '/home/ai2/murphyk/matlab/FullBNT';

%addpath(genpathKPM())

if 0
% genpath creates a list of all subdirectories.
% The syntax was changed between matlab 5 and matlab 6.
v = version;
if v(1)=='5'
  addpath(genpath(BNT_HOME,0))
else
  addpath(genpath(BNT_HOME))
end
% Genpath has a bug, so that it fails to add directories which only contain directories but no
% regular files e.g., BNT/inference. Hence we add dummy files to such directories.
% This bug has been fixed in matlab 6.5.
% Also, genpath adds all subdirectories, including 'Old' ones.
% Sometimes the old files mask the newer ones, creating problems...
end

folders = {'BNT', 'BNT/CPDs', 'BNT/general', 'BNT/inference', 'BNT/inference/dynamic', ...
	   'BNT/inference/online', 'BNT/inference/static', 'BNT/learning', 'BNT/potentials', ...
	   'BNT/potentials/Tables', ...
	   'BNT/examples/dynamic', 'BNT/examples/dynamic/HHMM', 'BNT/examples/dynamic/HHMM/Map', ...
	   'BNT/examples/dynamic/HHMM/Mgram', 'BNT/examples/dynamic/HHMM/Motif',...
	   'BNT/examples/dynamic/HHMM/Square','BNT/examples/dynamic/SLAM', ...
	   'BNT/examples/limids', 'BNT/examples/static', ...
	   'BNT/examples/static/Belprop', 'BNT/examples/static/Brutti', ...
	   'BNT/examples/static/dtree', 'BNT/examples/static/fgraph', 'BNT/examples/static/HME', ...
	   'BNT/examples/static/Misc', 'BNT/examples/static/Models', 'BNT/examples/static/SCG', ...
	   'BNT/examples/static/StructLearn', 'BNT/examples/static/Zoubin', ...
	   'graph', 'GraphViz', 'Kalman'};

% HMM KPMstats KPMtools	   'Foreign/netlab/netlab3.3', 	   'Foreign/netlab/netlabKPM'};


addpath(BNT_HOME)
for f=1:length(folders)
  addpath(fullfile(BNT_HOME, folders{f}))
end
 
