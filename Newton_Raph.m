prompt={'input function','Starting point'};
name='Newton Raph';fieldsize =[1 40];
v=inputdlg(prompt,name,fieldsize);
b=cell2mat(v(1));
f=str2sym(b);
c=diff(f); d=diff(f,2);
dt=c/d;
xo=str2double(v(2));
fp=subs(c,xo);
fpp =subs(d,xo);
count=0;
dx=subs(dt,xo);
while abs(fp) > 0.00000001
    z=vpa(xo-dx);
    xo=z;
    count=count+1;
    fp=subs(c,xo);
fpp =subs(d,xo);
dx=abs(subs(dt,xo));
end
G=sprintf('The optimal value of x is %1.6f',z'); msgbox(G)