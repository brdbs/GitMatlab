function [vf] = echpartie2(a,b,f,df,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Te = (b-a)/N;
vf = zeros (1,N);
x=a;

for k = 1:N
    vf(1,k)= - sin(2*pi*f*x) + sin(2*pi*(f+df)*x) + sin(2*pi*(f+(2*df))*x);
    x= x + Te;
end

end
