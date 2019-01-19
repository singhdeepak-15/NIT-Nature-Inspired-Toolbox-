function [mx mn] = Boundvalues(val)
if strcmp(val,'Sphere')
    mx = 5.12;
    mn = -5.12;
else
    if strcmp(val,'rosenbrock')
        mx = 30;
        mn = -30;
    else
        if strcmp(val,'rastrigin')
            mx = 5.12;
            mn = -5.12;
        else
            if strcmp(val,'griewank')
                mx = 600;
                mn = -600;
            else
                if strcmp(val,'ackley')
                    mx = 32;
                    mn = -32;
                else
                    if strcmp(val,'Clerks')
                        mx = 5.12;
                        mn = -5.12;
                    else
                        if strcmp(val,'Penalized')
                            mx = 50;
                            mn = -50;
                        else
                            if strcmp(val,'Penalized16')
                                mx = 50;
                                mn = -50;
                            else
                                if strcmp(val,'beale')
                                    mx = 4.5;
                                    mn = -4.5;
                                else
                                    if strcmp(val,'Penalized')
                                        mx = 50;
                                        mn = -50;
                                    else
                                        if strcmp(val,'Penalized')
                                            mx = 50;
                                            mn = -50;
                                        else
                                            if strcmp(val,'Penalized')
                                                mx = 50;
                                                mn = -50;
                                            else
                                                mx = 5.12;
                                                mn = -5.12;
                                            end
                                        end
                                    end
                                end                                                            
                            end
                        end
                    end
                end
            end
        end
    end
end
