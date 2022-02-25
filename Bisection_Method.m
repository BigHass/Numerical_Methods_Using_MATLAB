f=input('Enter your function: ');
a=input('Enter left side of interval: ');
b=input('Enter right side of interval: ');
n=input('Enter # of iterations: ');
delta=input('Enter the value of tolerance: ');
fprintf('Bisection Method\n');
if f(a)*f(b)<0
    for i=1:n
        c=(a+b)/2;
        fprintf('# of iteration: %d \t midpoint: %.5f\n',i,c);
        if f(a)*f(c)<0
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end
        if abs(b - a)<delta 
            break;
        end
    end   
else 
    fprintf('Bisection method fails....');
end