function c = fFunction(a,b)
%   c = sign(a).*sign(b).*min(abs(a),abs(b));
%     c = 0.9375*sign(a).*sign(b).*min(abs(a),abs(b));
num = max(a+b,0)+log(1+exp(-abs(a+b)));
den = max(a,b)+log(1+exp(-abs(a-b)));
c=num-den;
