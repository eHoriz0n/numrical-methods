function [x,n] = dicho(f, a, b, e)

    % we will be using annonymos function instead of inline
    % since it's going to be deprecated soon

    fx = @(x) eval(f);
    
    n = 0;
    
    while abs(b - a) > e
        
        n = n + 1;
        
        x = (a + b) / 2;
        
        if fx(a) * fx(x) < 0
            b = x;
        else
            a = x;
        end
        
    end
    
    fprintf("solution: %f \niterations counts: %d", x, n);
    
end

