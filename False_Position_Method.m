f=input('Enter your function: ');
a=input('Enter left side of interval: ');
b=input('Enter right side of interval: ');
n=input('Enter # of iterations: ');
delta=input('Enter the value of tolerance: ');
fprintf('False Position Method\n');
if f(a)*f(b)<0 && a<b
    for i=1:n
        c= b - ((f(b)*(b-a))/(f(b)-f(a)));
        fprintf('# of iteration: %d \t midpoint: %.10f\n',i,c);
        if f(a)*f(c)<0
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end
        if abs(f(c))<delta 
            break;
        end
    end   
else 
    fprintf('False Position Method Fails....');
end