function val = myCurvature( DS,DDS )
%UNTITLED4 Summary of this function goes here
% http://www3.ul.ie/~mlc/support/Loughborough%20website/chap13/13_4.pdf
% DS and DDS are vectors containig the first and second derivative of 
% both the components of B spline

val = (DS(:,1).*DDS(:,2) - DS(:,2).*DDS(:,1) )./...
           ( ( DS(:,1).^2 + DS(:,2).^2 ).^(3/2) );
end