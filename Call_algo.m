function res = Call_algo(param,choice,clas)
% tfea = size(data,2)-1;
addpath('F:\CODE\OPTIMIZATION\TOOLBOX EVOLUTIONARY\single-objective-unconstrained');

switch choice
    case 1
        %Genetic
        nvars = 2;%param(1);
        evalc(['fun = @', char(clas)])
        options = optimoptions(@ga,'PlotFcn',{@gaplotbestf,@gaplotbestindiv,@gaplotdistance,@gaplotexpectation})
        [x,fval] = ga(fun,nvars,[],[],[],[],param(5),param(4),[],[],options)
        res.x = x;
        res.fval = fval;
    
    case 2
        %pso
        nvars = 2;%param(1);
        evalc(['fun = @', char(clas)])
        options = optimoptions(@particleswarm,'PlotFcn',{@pswplotbestf})
        [y,fval] = particleswarm(fun,nvars,param(5),param(4),options)
        res.x = y;
        res.fval = fval;
        
    case 3
        %aco
        [man, st, bestpop, bestfit] = aco(param(1),param(2),param(3),1,tfea,clas,data);
        res.mean = man;
        res.std = st;
        res.bestpop = bestpop;
        res.bestfit = bestfit;
    case 4
        %abc
        [man, st, bestpop, bestfit] = runABC(param(1),param(2),param(3),1,tfea,clas,data);
        res.mean = man;
        res.std = st;
        res.bestpop = bestpop;
        res.bestfit = bestfit;
        
    case 5
        %de
        [man ,st , bestpop ] = devec('Fitness',0.001,param(2),1,tfea,data,param(1),param(3),clas);
        res.mean = man;
        res.std = st;
        res.bestpop = bestpop;
%         res.bestfit = bestfit;
   
    case 6
        %tabu
        
        
    case 7
        %cukoo
        
    case 8
        [man, st, bestpop, bestfit] = tlboga(param(1),param(2),5,1,tfea,clas,data);
        res.mean = man;
        res.std = st;
        res.bestpop = bestpop;
        res.bestfit = bestfit;
        
end