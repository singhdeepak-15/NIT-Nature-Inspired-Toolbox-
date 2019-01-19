function [str] = Function_select(val)
if strcmp(val,'CONTINUOUS')
    functions = dir('single-objective-unconstrained');%[fileparts(mfilename('fullpath')) filesep 'single-objective']);            
    functions = cellfun(@(x) x(1:end-2), {functions.name}, 'uniformoutput', false);
    functions = functions(3:end);
    str = functions;%'SPHERE','ACKLEY','RASTRIGIN','','','',''};
else
    if strcmp(val,'DISCRETE')
        str = {'Select','GOLDBERG','','','','','',''};
    else
        if strcmp(val,'MULTI')
            str = {'Select'};
        else
           
        end
        
    end
end