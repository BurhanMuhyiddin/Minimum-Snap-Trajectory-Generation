function D = derivative_matrix(n)
    syms t
    
    D = sym(zeros(n, 8));
    D(1, :) = [1, t^1, t^2, t^3, t^4, t^5, t^6, t^7];
    
    for i = 2:n
        D(i, :) = diff(D(i-1, :), t);
    end
end