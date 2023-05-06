function val = roots_valid(my_roots)
index = [];
var = [];
for i = 1:length(my_roots)
    if ( imag( my_roots(i) ) == 0  )
        x= real( my_roots(i) );
       if ( (x>=0) && (x<=1) ) 
        index = [index i];
        var   = [var x];
       end
    end
    
end

if ( ~isempty(var) )
    my_var = max(var);
    my_index = find(my_roots==my_var);
    val = my_index;
else
    val = 0;
end

end