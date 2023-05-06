function matrix = basisMatrix(k)
    % k is the order of spline (number of parameters)
    % For cubic spline order is 4 and degree is 3.
    i=0:k-1; % index as used in the reference.
    j=0:k-1; % index as used in the reference.
    M = zeros(k,k);
    for it1=1:length(i)
        for it2=1:length(j)
            sum=0;
            m=j(it2):k-1;
            for it3 = 1:length(m)
               sum = sum + ( ( k-( m(it3)+1 ) )^i(it1) )*...
                           ( (-1)^( m(it3) - j(it2) )  )*...
                           nchoosek( k, m(it3) - j(it2) ); 
            end
            M(i(it1)+1,j(it2)+1) = (1/factorial(k-1))*nchoosek(k-1,i(it1))*sum;
        end
    end
    matrix = M;
end