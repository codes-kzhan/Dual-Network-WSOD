function dual_build()
% dual_build()
% --------------------------------------------------------
% Dual-Network implementation
% Modified from MATLAB R-FCN (https://github.com/daijifeng001/R-FCN)
% Copyright (c) 2017, Xuanyi Dong
% Licensed under The MIT License [see LICENSE for details]
% --------------------------------------------------------

% Compile nms_mex
if ~exist('nms_mex', 'file')
  fprintf('Compiling nms_mex\n');
  mex -O -outdir bin ...
      CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
      -largeArrayDims ...
      functions/nms/nms_mex.cpp ...
      -output nms_mex;
end

% Compile nms_max_mex
if ~exist('nms_max_mex', 'file')
  fprintf('Compiling nms_max_mex\n');
  mex -O -outdir bin ...
      CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
      -largeArrayDims ...
      functions/nms/nms_max_mex.cpp ...
      -output nms_max_mex;
end

% Compile nms_min_mex
if ~exist('nms_min_mex', 'file')
  fprintf('Compiling nms_min_mex\n');
  mex -O -outdir bin ...
      CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
      -largeArrayDims ...
      functions/nms/nms_min_mex.cpp ...
      -output nms_min_mex;
end

end
