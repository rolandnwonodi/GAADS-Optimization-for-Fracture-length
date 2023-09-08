function [X,FVAL,REASON,OUTPUT,POPULATION,SCORES] =  FEA Validation
%   This is an auto generated M file to do optimization with
%   Genetic Algorithm and Direct Search Toolbox.

% Fitness function
fitnessFunction = @objfun;
% Number of Variables
nvars = 3 ;
% Linear inequality constraints
Aineq = [  1 0 0 ;  1 0 0 ];
Bineq = [  500 1.44 ];
% Linear equality constraints
Aeq = [];
Beq = [];
% Bounds
LB = [  0 0 0 ];
UB = [  60 174 146 ];
% Nonlinear constraints
nonlconFunction = @simple_constraint;
% Start with default options
options = gaoptimset;
% Modify some parameters
options = gaoptimset(options,'PopulationSize' ,500);
options = gaoptimset(options,'EliteCount' ,3 );
options = gaoptimset(options,'MigrationDirection' ,'both');
options = gaoptimset(options,'Generations' ,200);
options = gaoptimset(options,'InitialPopulation' ,[  50 174 146 ]);
options = gaoptimset(options,'InitialScores' ,556);
options = gaoptimset(options,'CrossoverFcn' ,{  @crossoverheuristic 1.2 });
options = gaoptimset(options,'MutationFcn' ,@mutationadaptfeasible);
options = gaoptimset(options,'Display' ,'off');
options = gaoptimset(options,'PlotFcns' ,{  @gaplotbestf @gaplotbestindiv });
options = gaoptimset(options,'HybridFcn' ,{  @patternsearch [] });
% Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,Aineq,Bineq,Aeq,Beq,LB,UB,nonlconFunction,options);
