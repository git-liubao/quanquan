% OBJHARV.M      (OBJective function for HARVest problem)
%
% This function implements the HARVEST PROBLEM.
%
% Syntax:  ObjVal = objharv(Chrom,rtn_type)
%
% Input parameters:
%    Chrom     - Matrix containing the chromosomes of the current
%                population. Each row corresponds to one individual's
%                string representation.
%                if Chrom == [], then special values will be returned
%    rtn_type  - if Chrom == [] and
%                rtn_type == 1 (or []) return boundaries
%                rtn_type == 2 return title
%                rtn_type == 3 return value of global minimum
%
% Output parameters:
%    ObjVal    - Column vector containing the objective values of the
%                individuals in the current population.
%                if called with Chrom == [], then ObjVal contains
%                rtn_type == 1, matrix with the boundaries of the function
%                rtn_type == 2, text for the title of the graphic output
%                rtn_type == 3, value of global minimum
%                
%
% Author:     Hartmut Pohlheim
% History:    18.02.94     file created (copy of vallinq.m)
%             01.03.94     name changed in obj*
%             14.01.03     updated for MATLAB v6 by Alex Shenfield

function ObjVal = myobj(Chrom,rtn_type)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%数据组的索引
    index = 1;    
    
%目标函数1的阈值
    threshold1 = 0.2;
    obj_max = 5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% global gen;

% Dimension of objective function
   Dim = 15;

% values from MICHALEWICZ
   a = 1.1;
   x0 = 100;
   xend = x0;
   XENDWEIGHT = 0.4/(Dim^0.6);
   
% Compute population parameters
   [Nind,Nvar] = size(Chrom);

% Check size of Chrom and do the appropriate thing
   % if Chrom is [], then define size of boundary-matrix and values
   if Nind == 0
      % return text of title for graphic output
      if rtn_type == 2
         ObjVal = ['白媛媛 - DIM=' int2str(Dim)];
      % return value of global minimum
      elseif rtn_type == 3
         ObjVal = -10000;
      % define size of boundary-matrix and values
      else   
         % lower and upper bound, identical for all n variables        
         %ObjVal1 = [1; 100];
         %ObjVal = rep(ObjVal1,[1 Dim]);
         ObjVal=[36.07 27.84 139.53 49.25 139.53  0.001 0.001 0.1 0.001 0.001 0.001 0.001 0.1 0.001 0.001;
                 68.73 61.77 163.80 80.72 163.80  0.999 0.999 0.1 0.999 0.999 0.999 0.999 0.1 0.999 0.999];
         %ObjVal=[130 130 100 130 130  0.01 0.01 0.1 0.01 0.01 0.01 0.01 0.1 0.01 0.01;
          %       190 190 100 190 190  0.99 0.99 0.1 0.99 0.99 0.99 0.99 0.1 0.99 0.99];
      end
   % if Dim variables, compute values of function
   elseif Nvar == Dim
        ObjVal = zeros(Nind,1);
        for i=1:Nind
            Chrom(i,:);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            val1 =objec_func(Chrom(i,:), index);
            if( val1 > threshold1)
                val1 = obj_max;
            end
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %第二个目标函数
            val2 = objfn2(Chrom(i,:), index);
            ObjVal(i) = val1 + val2;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        end
   % otherwise error, wrong format of Chrom
   else
      error('size of matrix Chrom is not correct for function evaluation');
   end   

% End of function